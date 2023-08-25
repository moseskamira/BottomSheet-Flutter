import 'package:flutter/material.dart';
import 'bottom_sheet_item_card.dart';

class BottomSheetListView extends StatelessWidget {
  const BottomSheetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext mContext, int index) {
          return GestureDetector(
            onTap: () {
              //showSnackBar(mContext, 'You tapped me', error: false);
            },
            child: BottomSheetItemCard(index: index),
          );
        });
  }
}
