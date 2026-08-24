import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../constants/app_constants.dart';
import '../localization/l10n_gen/app_localizations.dart';

/// Evidence photo capture/selection widget used by every flagship form.
/// Picked images are compressed immediately and handed back as local file
/// paths — the caller's form controller decides whether to upload them now
/// (online) or queue them via `OfflineWriteHelper.queuePhotoUpload` (offline).
class PhotoPickerField extends StatelessWidget {
  const PhotoPickerField({
    super.key,
    required this.localPaths,
    required this.onChanged,
    this.existingUrls = const <String>[],
    this.maxPhotos = 6,
  });

  final List<String> localPaths;
  final List<String> existingUrls;
  final ValueChanged<List<String>> onChanged;
  final int maxPhotos;

  Future<void> _pick(BuildContext context, ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? picked = await picker.pickImage(source: source, imageQuality: 85);
    if (picked == null) return;
    final Directory dir = await getApplicationDocumentsDirectory();
    final String targetPath = '${dir.path}/evidence_${DateTime.now().millisecondsSinceEpoch}.jpg';
    final XFile? compressed = await FlutterImageCompress.compressAndGetFile(
      picked.path,
      targetPath,
      quality: AppConstants.evidenceImageCompressQuality,
    );
    final String finalPath = compressed?.path ?? picked.path;
    onChanged(<String>[...localPaths, finalPath]);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final int total = localPaths.length + existingUrls.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(l10n.common_photos, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (final String url in existingUrls) _thumb(image: NetworkImage(url)),
            for (int i = 0; i < localPaths.length; i++)
              _thumb(
                image: FileImage(File(localPaths[i])),
                onRemove: () {
                  final List<String> next = List<String>.from(localPaths)..removeAt(i);
                  onChanged(next);
                },
              ),
            if (total < maxPhotos)
              InkWell(
                onTap: () => _showPickerSheet(context),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.add_a_photo_outlined),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _thumb({required ImageProvider image, VoidCallback? onRemove}) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image(image: image, width: 72, height: 72, fit: BoxFit.cover),
        ),
        if (onRemove != null)
          Positioned(
            top: -6,
            right: -6,
            child: IconButton(
              icon: const Icon(Icons.cancel, size: 20),
              onPressed: onRemove,
              color: Colors.red,
            ),
          ),
      ],
    );
  }

  void _showPickerSheet(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext sheetContext) => SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_camera_outlined),
              title: Text(l10n.common_camera),
              onTap: () {
                Navigator.pop(sheetContext);
                _pick(context, ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: Text(l10n.common_gallery),
              onTap: () {
                Navigator.pop(sheetContext);
                _pick(context, ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
