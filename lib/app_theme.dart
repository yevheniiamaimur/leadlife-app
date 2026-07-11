import 'package:flutter/material.dart';

// Lead Life brand palette
const llBg = Color(0xFFFCFAF7); // Warm White
const llCardBg = Color(0xFFFFFFFF); // White — inputs & widgets
const llSand = Color(0xFFF5F0E8);
const llGold = Color(0xFF381932); // Plum — primary accent
const llGoldDark = Color(0xFF6D4A63); // muted plum
const llInk = Color(0xFF1E1E1E); // Primary text
const llMuted = Color(0xFF6E6E73); // Secondary text
const llMutedSoft = Color(0xFF9A9AA0); // Tertiary text
const llDisabled = Color(0xFFC6C6CC); // Disabled text
const llHair = Color(0xFFE0D8CC);
const llViolet = Color(0xFF9B8EAD);
const llGreen = Color(0xFF4A6741);

// Shadows — all tinted Plum rgba(56,25,50,·)
const llShadowSoft = [
  BoxShadow(color: Color(0x0F381932), blurRadius: 8, offset: Offset(0, 2)),
];
const llShadowMedium = [
  BoxShadow(color: Color(0x14381932), blurRadius: 20, offset: Offset(0, 6)),
];
const llShadowLarge = [
  BoxShadow(color: Color(0x1F381932), blurRadius: 40, offset: Offset(0, 12)),
];

// A field's own color, unless it's too light to read on llBg/white text —
// then falls back to the Plum brand accent.
Color llReadableAccent(Color color, {double threshold = 0.55}) =>
    color.computeLuminance() > threshold ? llGold : color;

BoxDecoration llCardDecoration({Color? borderColor}) => BoxDecoration(
  color: llCardBg,
  borderRadius: BorderRadius.circular(16),
  border: Border.all(color: borderColor ?? llHair, width: 1),
  boxShadow: llShadowMedium,
);
