import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const StockSearchAppBar({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kTextTabBarHeight,
        child: Row(
          children: [
            Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                width: 56,
                height: kTextTabBarHeight,
                child: Arrow(
                  direction: AxisDirection.left,
                ),
              ),
            ),
            Expanded(
              child: TextFieldWithDelete(
                controller: controller,
                textInputAction: TextInputAction.search,
                texthint: '\'커피\'를 검색해 보세요.',
                onEditingComplete: () {
                  debugPrint('검색 확인 버튼');
                  AppKeyboardUtil.hide(context);
                },
              ),
            ),
            width20,
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
