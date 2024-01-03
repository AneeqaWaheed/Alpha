import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

abstract class BaseLoginScreen extends StatefulWidget {
  const BaseLoginScreen({Key? key}) : super(key: key);

  @override
  _BaseLoginScreenState createState() => _BaseLoginScreenState();

  void onNextButtonPressed(BuildContext context);
  String getTitle();
  String getSubtitle();
  Widget getInputField();
}

class _BaseLoginScreenState extends State<BaseLoginScreen> {
  late Size mq;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 80, 38, 207)!,
              Colors.deepPurple[500]!,
              Color.fromARGB(255, 135, 83, 224)!,
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 300,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.getTitle(),
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.getSubtitle(),
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 179, 165, 165),
                                ),
                              ),
                            ),
                            child: widget.getInputField(),
                          ),
                          SizedBox(height: 40),
                          Padding(
                            padding: EdgeInsets.only(left: 200),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 53, 147, 56),
                                shape: StadiumBorder(),
                                elevation: 1,
                              ),
                              onPressed: () {
                                widget.onNextButtonPressed(context);
                              },
                              icon: Image.asset(
                                'images/next.png',
                                height: mq.height * 0.03,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Next',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: mq.height * 0.1,
              left: mq.width * 0.25,
              child: Container(
                width: mq.width * 0.5,
                height: mq.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromARGB(255, 90, 57, 195),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 175, 167, 206).withOpacity(0.1),
                      offset: Offset(-2, -2),
                      spreadRadius: 2,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Image.asset(
                  'images/Alpha.PNG',
                  width: mq.width * 1.0,
                  height: mq.height * 1.0,
                ),
              ),
            ),
            Positioned(
              top: mq.height * 0.35,
              left: mq.width * 0.45,
              child: Text(
                'Alpha',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 1, 23),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
