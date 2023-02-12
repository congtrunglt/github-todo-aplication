import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// class todotitle extends StatefulWidget {
//   final String taskName;
//   final bool taskCompleted;
//   Function(bool?)? onChanged;

//   todotitle(
//       {super.key,
//       required this.taskName,
//       required this.taskCompleted,
//       required this.onChanged});

//   @override
//   State<todotitle> createState() => _todotitleState();
// }

// class _todotitleState extends State<todotitle> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             children: [
//               // Checkbox(value: taskCompleted, onChanged: onChanged),
//               Text('This is my task'),
//             ],
//           ),
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(12),
//           )),
//     );
//   }
// }

class todotitle extends StatelessWidget {
  final taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  todotitle(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 25, right: 22),
      child: Slidable(
        //Thanh truot de xoa 1 task trong todolist
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.pink,
              ),
              Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
