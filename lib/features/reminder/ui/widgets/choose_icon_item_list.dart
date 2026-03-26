import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/choose_icons_list_demo.dart';
import 'package:quran_app/features/reminder/ui/widgets/choose_icon_item.dart';

class ChooseIconItemList extends StatefulWidget {
  const ChooseIconItemList({super.key});

  @override
  State<ChooseIconItemList> createState() => _ChooseIconItemListState();
}

class _ChooseIconItemListState extends State<ChooseIconItemList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(icons.length, (index) {
        return ChooseIconItem(
          isSelected: selectedIndex == index,
          image: icons[index],
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      }),
    );

    //   ListView.builder(
    //     itemCount: icons.length,
    //     itemBuilder: (context, index) {
    //       return ChooseIconItem(
    //         chooseIconModel: icons[index],
    //         onTap: () {},);
    //     },
    //   );
  }
}
