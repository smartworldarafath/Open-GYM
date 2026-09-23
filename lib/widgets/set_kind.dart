import 'package:flutter/material.dart';

import '../l10n/l10n.dart';
import '../models/workout.dart';
import '../theme/app_colors.dart';

Color setKindColor(GymColors gc, SetKind kind) => switch (kind) {
      SetKind.warmup => gc.warn,
      SetKind.drop => gc.info,
      SetKind.failure => gc.danger,
      SetKind.restPause => gc.brass,
      SetKind.normal => gc.text,
    };

String setKindLabel(SetKind kind) => switch (kind) {
      SetKind.warmup => t.setTypeWarmup,
      SetKind.drop => t.setTypeDrop,
      SetKind.failure => t.setTypeFailure,
      SetKind.restPause => t.setTypeRestPause,
      SetKind.normal => t.setTypeNormal,
    };

String setKindTag(SetKind kind) => switch (kind) {
      SetKind.warmup => 'W',
      SetKind.drop => 'D',
      SetKind.failure => 'F',
      SetKind.restPause => 'RP',
      SetKind.normal => '',
    };
