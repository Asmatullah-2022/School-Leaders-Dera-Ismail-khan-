import 'package:flutter/material.dart';

import '../../data/models/scoring_criterion_model.dart';

class WeightedScoreBreakdown extends StatelessWidget {
  const WeightedScoreBreakdown({super.key, required this.criteriaScores});

  final List<CriterionScoreModel> criteriaScores;

  @override
  Widget build(BuildContext context) {
    final bool rtl = Directionality.of(context) == TextDirection.rtl;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (final CriterionScoreModel c in criteriaScores)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      (rtl && c.labelUrdu != null) ? c.labelUrdu! : c.label,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${c.achievedScore.toStringAsFixed(0)}/${c.maxScore.toStringAsFixed(0)} (w:${c.weight.toStringAsFixed(0)})',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: LinearProgressIndicator(
                    value: c.maxScore > 0 ? (c.achievedScore / c.maxScore).clamp(0, 1) : 0,
                    minHeight: 6,
                    backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
