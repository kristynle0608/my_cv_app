import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          // Avatar image
          CircleAvatar(
            radius: 90,
            // TODO:- Provide Path for image
            foregroundImage: AssetImage("assets/grey-cat.jpg"),
          ),

          Text(
            "Kristyn L",
            style: TextStyle(
                fontFamily: "Bebas", fontSize: 40, fontWeight: FontWeight.bold),
          ),

          Text("Software Developer", style: kTitleTextStyle),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.blueGrey,
                  size: 30,
                ),
                title: Center(
                    child: Text("+1 (123) 456 - 789",
                        style: kCardElementTextStyle)),
              ),
            ),
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  title: Center(
                      child: Text("example@email.com",
                          style: kCardElementTextStyle)),
                  trailing: SizedBox(),
                ),
              )),

          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Education",
                        textAlign: TextAlign.center,
                        style: kBoldTextStyle,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "University of New Brunswick, NB",
                        textAlign: TextAlign.center,
                        style: kRegularSmallTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Work Experience",
                        textAlign: TextAlign.center,
                        style: kBoldTextStyle,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Walmart Cashier",
                        textAlign: TextAlign.center,
                        style: kRegularSmallTextStyle,
                      ),
                      Text(
                        "Full Stack Developer",
                        textAlign: TextAlign.center,
                        style: kRegularSmallTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
