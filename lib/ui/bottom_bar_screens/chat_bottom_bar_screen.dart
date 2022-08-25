import 'package:flutter/material.dart';

class ChatBottomBarScreen extends StatefulWidget {
  @override
  _ChatBottomBarScreenState createState() => _ChatBottomBarScreenState();
}

class _ChatBottomBarScreenState extends State<ChatBottomBarScreen> {
  PageController controller = PageController();
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _list = <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Text(
            "You have no unread messages",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
              "When you contact a host or send a reservation request, you`ll see your messages here"),
        ],
      ),
      // Column(
      //   children: [
      //     Padding(padding: EdgeInsets.symmetric(vertical: 10)),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         CircleAvatar(
      //           radius: 20,
      //           backgroundColor: Colors.teal,
      //         ),
      //         Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             SizedBox(
      //               width: MediaQuery.of(context).size.width * 0.7,
      //               child: Text("add you work email to unlock extra perks for business trips, like simplified expensing"),
      //             ),
      //             Padding(padding: EdgeInsets.symmetric(vertical: 2)),
      //             Text(
      //               "Dec 1,2020",
      //               style: TextStyle(color: Colors.grey),
      //             )
      //           ],
      //         )
      //       ],
      //     )
      //   ],
      // ),
    ];

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text("Chat",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(0);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Messages",
                          style: TextStyle(
                            color: _curr == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                        Container(
                          width: 80,
                          height: 3,
                          decoration: BoxDecoration(
                              color: _curr == 0 ? Colors.black : Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  // InkWell(
                  //   onTap: () {
                  //     controller.jumpToPage(1);
                  //   },
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Notifications",
                  //         style: TextStyle(color: _curr == 1 ? Colors.black : Colors.grey),
                  //       ),
                  //       Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  //       Container(
                  //         width: MediaQuery.of(context).size.width * 0.1,
                  //         height: 3,
                  //         decoration:
                  //             BoxDecoration(color: _curr == 1 ? Colors.black : Colors.white, borderRadius: BorderRadius.all(Radius.circular(50))),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 1)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 3,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: PageView(
                  children: _list,
                  scrollDirection: Axis.horizontal,

                  // reverse: true,
                  // physics: BouncingScrollPhysics(),
                  controller: controller,
                  onPageChanged: (num) {
                    if(mounted) setState(() {
                      _curr = num;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
