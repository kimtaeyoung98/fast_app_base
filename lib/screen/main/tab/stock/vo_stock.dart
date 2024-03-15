import 'dart:ui';

import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_papular_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Stock extends PapularStock {
  final String stockImagePath;

  Stock({
    required this.stockImagePath,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.stockName,
  });
}
