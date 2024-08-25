import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 80,
          monthColor: AppColors.grey,
          dayColor: AppColors.primary,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: AppColors.primary,
          dotColor: Colors.white,
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(
          child:ListView.separated(
              separatorBuilder: (context,index) =>SizedBox(
                height: 12,
              ),
              itemBuilder: (context,index){
              return TaskItem() ;
            },itemCount: 30,),
          ),
      ],
    );
  }
}
