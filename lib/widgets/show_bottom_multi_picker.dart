import 'package:base_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Future<Widget?> showBottomBirthdayPicker(
    BuildContext context,
    List<String> pickedList1,
    List<String> pickedList2,
    TextEditingController givenTextController,
    String hintLabel,
    {int initialNum = 0,
    int initialNum2 = 0}) async {
  bool doneScrolled = false;

  final index = givenTextController.text != ''
      ? pickedList1.indexWhere(
          (item) => item == givenTextController.text.substring(0, 5))
      : -1;

  final index2 = givenTextController.text != ''
      ? pickedList2
          .indexWhere((item) => item == givenTextController.text.substring(5))
      : -1;

  final modifiedIndex = (index != -1) ? index : initialNum;
  final modifiedIndex2 = (index2 != -1) ? index2 : initialNum2;

  await showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext builder) {
        final textList = [
          pickedList1[modifiedIndex],
          pickedList2[modifiedIndex2]
        ];

        return SizedBox(
          height: (MediaQuery.of(context).size.height / 3) +
              customHeight(context, 100),
          child: Column(
            children: [
              SizedBox(
                height: customWidth(context, 50),
                child: ColoredBox(
                  color: kWhite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('$hintLabelを選択してください')),
                      TextButton(
                        onPressed: () {
                          if (!doneScrolled && index == -1) {
                            givenTextController.text =
                                pickedList1[initialNum].toString() +
                                    pickedList2[initialNum2].toString();
                          }

                          Navigator.of(context).pop();
                          FocusScope.of(context).unfocus();
                        },
                        child: const Text(
                          '完了',
                          style: TextStyle(
                              color: kPointColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: customWidth(context, 375) / 2,
                      child: CupertinoPicker.builder(
                        scrollController: FixedExtentScrollController(
                          initialItem: modifiedIndex,
                        ),
                        itemBuilder: (context, index) {
                          final clinic = pickedList1[index];
                          return Center(
                            child: Text(
                              clinic,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          );
                        },
                        childCount: pickedList1.length,
                        itemExtent: customWidth(context, 50),
                        onSelectedItemChanged: (int value) {
                          doneScrolled = true;
                          textList[0] = pickedList1[value];

                          givenTextController.text = textList.join('');
                        },
                      ),
                    ),
                    SizedBox(
                      width: customWidth(context, 375) / 2,
                      child: CupertinoPicker.builder(
                        scrollController: FixedExtentScrollController(
                          initialItem: modifiedIndex2,
                        ),
                        itemBuilder: (context, index2) {
                          final clinic = pickedList2[index2];
                          return Center(
                            child: Text(
                              clinic,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          );
                        },
                        childCount: pickedList2.length,
                        itemExtent: customWidth(context, 50),
                        onSelectedItemChanged: (int value) {
                          doneScrolled = true;
                          textList[1] = pickedList2[value];

                          givenTextController.text = textList.join('');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
