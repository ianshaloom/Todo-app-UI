import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({super.key});

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 157, 235, 255),
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color.fromARGB(51, 255, 255, 255),
                      offset: Offset(1, 3),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/user.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Grocery Shopping',
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 29, 47),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              top: 20,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  '1h 30min',
                  style: TextStyle(color: Colors.grey),
                ),
                FloatingActionButton(
                  elevation: 0,
                  shape: const CircleBorder(),
                  mini: true,
                  backgroundColor: Color.fromARGB(54, 78, 78, 78),
                  onPressed: () {},
                  child: const Icon(
                    Icons.done,
                    size: 30,
                    color: Color.fromARGB(255, 16, 29, 47),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
