import 'package:base_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Future<Widget?> showBottomPicker(BuildContext context, List<String> pickedList,
    TextEditingController givenTextController, String hintLabel) async {
  bool doneScrolled = false;

  final index =
      pickedList.indexWhere((item) => item == givenTextController.text);
  final clinicId = (index != -1) ? index : 0;

  await showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext builder) {
        return pickedList.isEmpty
            ? SizedBox(
                height: customWidth(context, 200),
                child: Container(
                    alignment: Alignment.center,
                    child: Text('登録されている$hintLabelはありません')),
              )
            : SizedBox(
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
                                      pickedList[0].toString();
                                }
                                Navigator.of(context).pop();
                                FocusScope.of(context).unfocus();
                              },
                              child: const Text(
                                '完了',
                                style: TextStyle(
                                    color: kPointColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: customWidth(context, 252),
                      child: CupertinoPicker.builder(
                        scrollController: FixedExtentScrollController(
                          initialItem: clinicId,
                        ),
                        itemBuilder: (context, index) {
                          final clinic = pickedList[index];
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
                        childCount: pickedList.length,
                        itemExtent: customWidth(context, 50),
                        onSelectedItemChanged: (int value) {
                          doneScrolled = true;
                          givenTextController.text = pickedList[value];
                        },
                      ),
                    ),
                  ],
                ),
              );
      });
}
