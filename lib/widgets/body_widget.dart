import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/widgets/contact_widget.dart';

class BodyWidget extends StatelessWidget {
  final projectList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/1003/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            // color: Colors.white,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 200),
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset(
                          "dog.jpg",
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "I\'m a dog. \nSo much Wow! So cute! \nEveryone love me~",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: ContactButton(
                          buttonText: "Adopt Me!",
                          icon: Icon(Icons.phone_android_outlined),
                          onPressed: () => {print("Adopt Me!")},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Divider(
        //   thickness: 10,
        //   color: Colors.black,
        // ),
        Expanded(
          // flex: 3,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "My Projects",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.work),
                                title: Text(projectList[index]['title']),
                                subtitle: Text(projectList[index]['subtitle']),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child:
                                    Image.network(projectList[index]['image']),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: projectList.length,
              )),
            ],
          ),
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}
