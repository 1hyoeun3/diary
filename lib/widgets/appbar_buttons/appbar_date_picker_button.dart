import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_material_date_picker.dart';
import 'package:diary/utils/ui/custom_cupertino_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarDatePickerButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const AppbarDatePickerButton({super.key, required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: TextButton(
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            alignment: Alignment.center,
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
          ),
          onPressed: onPressedCallback,
          child: Text('${customCupertinoDatePicker.selectedMonth.toString().padLeft(2, '0')}/${customCupertinoDatePicker.selectedDay.toString().padLeft(2, '0')}/${customCupertinoDatePicker.selectedYear.toString().substring(2)}',
            style: dateTextStyle(context),
          ),
        ),
      ),
    );
  }
}
