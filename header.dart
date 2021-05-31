import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: size.height / 5,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(45),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 2),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/haha.png"),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          " SAM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.black54,
                          child: Text("GOLD member"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
