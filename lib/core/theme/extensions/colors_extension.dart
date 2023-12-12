import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> with EquatableMixin {
  final Color primary;
  final Color btnPrimary;
  final Color txtInverse;
  final Color progressFill;
  final Color txtSubtle;

  AppColors({
    required this.primary,
    required this.btnPrimary,
    required this.txtInverse,
    required this.progressFill,
    required this.txtSubtle,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primary,
    Color? btnPrimary,
    Color? txtInverse,
    Color? progressFill,
    Color? txtSubtle,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      btnPrimary: btnPrimary ?? this.btnPrimary,
      txtInverse: txtInverse ?? this.txtInverse,
      progressFill: progressFill ?? this.progressFill,
      txtSubtle: txtSubtle ?? this.txtSubtle,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      btnPrimary: Color.lerp(btnPrimary, other.btnPrimary, t)!,
      txtInverse: Color.lerp(txtInverse, other.txtInverse, t)!,
      progressFill: Color.lerp(progressFill, other.progressFill, t)!,
      txtSubtle: Color.lerp(txtSubtle, other.txtSubtle, t)!,
    );
  }

  @override
  List<Object?> get props => [
        primary,
        btnPrimary,
        progressFill,
        txtInverse,
        txtSubtle,
      ];
}
