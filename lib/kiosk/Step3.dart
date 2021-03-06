import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Step4.dart';

class Step3 extends StatefulWidget {
  Step3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<Step3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.yellow[700]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 1',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 2',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 4',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
            ]),
            Container(
              margin: EdgeInsets.all(55),
              child: Text("???????????????\n???????????? ???????????????",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 55),
              child: Text(
                "??????????????????!\n?????? ????????? ?????? ???????????????!",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: const Text(
                            "?????? ????????? ????????? ?????????\n????????? ???????????? ???????????????!\n???????????? ?????? ???\n?????? ?????? ???????????? \n??????????????? ??????????????????!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('??????'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ]);
                    }),
                child: Image.asset('img/maru.png')),
            Container(
              height: 10,
            ),
            Container(
                height: 175,
                color: Colors.grey[300],
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              '?????? ??????\n\n????????????\n\n??? ????????????',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: Text(
                              '5900???\n\n0???\n\n5900???',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                      )),
                    ],
                  ),
                )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: // Colors.blue;
                              MaterialStateProperty.all<Color>(
                                  Colors.red.shade700),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Step4(title: "????????????")),
                          );
                        },
                        child: Container(
                            child: Text(
                          '????????????',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
