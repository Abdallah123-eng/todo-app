import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(motion: DrawerMotion(),
          extentRatio: 0.6,
          children: [
            SlidableAction(onPressed: (context){

            },
            label: "Delete",
            backgroundColor: Colors.red,
              icon: Icons.delete,
            ),
            SlidableAction(onPressed: (context){

            },
              label: "Edit",
              backgroundColor: Colors.blue,
              icon: Icons.edit,
            )
          ],),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.all(12),
        height: 115,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 80,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12)),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task Title",
                  style: TextStyle(fontSize: 18, color: AppColors.primary),
                ),
                Text("Task Description,.",
                    style: TextStyle(fontSize: 18, color: AppColors.grey)),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: 15,
              ),
            ),
            ElevatedButton(onPressed: () {},
                child: Icon(Icons.done),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
              ),

            )
          ],
        ),
      ),
    );
  }
}
