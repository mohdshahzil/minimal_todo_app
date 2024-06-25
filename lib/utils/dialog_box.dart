import 'package:flutter/material.dart';
import 'package:minimal_todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                )
                ,
              ),
            ),
            const SizedBox(height: 8),
            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
