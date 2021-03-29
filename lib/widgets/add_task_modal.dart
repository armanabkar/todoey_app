import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  final Widget widget;

  AddTaskModal(this.widget);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: widget,
              ),
            ),
          );
        });
  }
}
