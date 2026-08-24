import 'package:flutter/material.dart';

import '../../data/models/scoring_criterion_model.dart';

/// One criterion's score entry row: label (bilingual per direction) + slider
/// + numeric readout, used in the monitoring report form for each of the
/// active `monitoring_config` criteria.
class CriterionSliderField extends StatelessWidget {
  const CriterionSliderField({super.key, required this.criterion, required this.onChanged});

  final CriterionScoreModel criterion;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final bool rtl = Directionality.of(context) == TextDirection.rtl;
    final String label = (rtl && criterion.labelUrdu != null)
        ? criterion.labelUrdu!
        : criterion.label;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(label, style: Theme.of(context).textTheme.bodyMedium),
              Text(
                '${criterion.achievedScore.toStringAsFixed(0)} / ${criterion.maxScore.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: criterion.achievedScore.clamp(0, criterion.maxScore),
            min: 0,
            max: criterion.maxScore <= 0 ? 1 : criterion.maxScore,
            divisions: criterion.maxScore <= 0 ? 1 : criterion.maxScore.round(),
            label: criterion.achievedScore.toStringAsFixed(0),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
