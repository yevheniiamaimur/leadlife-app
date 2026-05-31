import 'package:flutter/material.dart';

// Lead Life brand palette
const llBg = Color(0xFFFAF7F2);
const llCardBg = Color(0xFFFFFFF8);
const llSand = Color(0xFFF5F0E8);
const llGold = Color(0xFFC8A96E);
const llGoldDark = Color(0xFF9A7E4F);
const llInk = Color(0xFF2C2C2C);
const llMuted = Color(0xFF8A7E70);
const llMutedSoft = Color(0xFFA09580);
const llHair = Color(0xFFE0D8CC);
const llViolet = Color(0xFF9B8EAD);
const llGreen = Color(0xFF4A6741);

// Shadow helpers
BoxDecoration llCardDecoration({Color? borderColor}) => BoxDecoration(
  color: llCardBg,
  borderRadius: BorderRadius.circular(16),
  border: Border.all(color: borderColor ?? llHair, width: 1),
  boxShadow: const [
    BoxShadow(
      color: Color(0x14B4A078),
      blurRadius: 20,
      offset: Offset(0, 8),
    ),
  ],
);
