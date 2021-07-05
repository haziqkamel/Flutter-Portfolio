import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/utils/util.dart';
import 'package:flutter_portfolio_app/widgets/body_widget.dart';
import 'package:flutter_portfolio_app/widgets/buttonIcon_widget.dart';
import 'package:flutter_portfolio_app/widgets/contact_widget.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.yellow,
                foregroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Haziq Kamel",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.amber,
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: Icon(Icons.email),
            onPressed: () {
              print("Hello World");
              launchMailto();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          BodyWidget(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(height: 59, child: TextButtonIcon()),
            ),
          ),
        ],
      ),
    );
  }
}
