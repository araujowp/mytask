import 'package:my_task/components/difficulty.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {

  final String name;
  final String patchPicture;
  final int dificult;

  const Task(this.name, this.patchPicture,this.dificult, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 140,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(4)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 72,
                  color: Colors.brown,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      child: Text(widget.name,
                          style: const TextStyle(
                          fontSize: 24,
                          overflow: TextOverflow.ellipsis)),
                    ),
                    Difficulty(widget.dificult),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Column(
                        children: [Icon(Icons.arrow_drop_up), Text("UP",style: TextStyle(fontSize: 12),)],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(fixedSize: Size(50, 50))
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
