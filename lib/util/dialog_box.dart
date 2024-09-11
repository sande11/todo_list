import 'package:flutter/material.dart';
import 'package:todo_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 4,
                ),
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
