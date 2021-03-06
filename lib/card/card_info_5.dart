import 'package:flutter/material.dart';
import 'package:it_guide/main.dart';
import 'card_info_4.dart';

class CardInfo5Page extends StatefulWidget {
  CardInfo5Page({Key? key}) : super(key: key);

  @override
  _CardInfo5PageState createState() => _CardInfo5PageState();
}

class _CardInfo5PageState extends State<CardInfo5Page> {
  var _isChecked1 = false;
  var _isChecked2 = false;
  var _isChecked3 = false;
  var _isChecked4 = false;
  var _isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결제 카드 등록'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
        leading: IconButton(
          alignment: Alignment.center,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => CardInfo4Page()),
            );
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
            ),
            Container(
              width: 320.0,
              height: 45.0,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0XFFE2E2E2),
                  border: Border.all(color: Colors.grey),
                ),
                child: _text1(),
              ),
            ),
            Container(
              height: 3,
            ),
            Container(
              width: 320.0,
              height: 45.0,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0XFFE2E2E2),
                  border: Border.all(color: Colors.grey),
                ),
                child: _text2(),
              ),
            ),
            Container(
              height: 3,
            ),
            Container(
              width: 320.0,
              height: 45.0,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0XFFE2E2E2),
                  border: Border.all(color: Colors.grey),
                ),
                child: _text3(),
              ),
            ),
            Container(
              height: 20,
            ),
            _checkbox(),
            Container(
              height: 100,
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: Text(
                            "정말 잘하셨어요! 이제 위의 정보를 바탕으로 카드 등록을 완료해볼까요? 아래의 ‘결제카드 등록하기’ 버튼을 눌러주세요!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('이전'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('다음'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ]);
                    }),
                child: Image.asset('img/maru.png')),
            Container(
              height: 20,
            ),
            _checkButton(),
          ],
        ),
      ),
    );
  }

  Widget _text1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          '카드 구분을 위한 별칭',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _text2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          '카드 번호',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0XFF292929),
          ),
        ),
        Container(width: 25.0),
        Text(
          '1234',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Container(width: 5.0),
        Text(
          '-',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Container(width: 5.0),
        Text(
          '1234',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        Container(width: 5.0),
        Text(
          '-',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Container(width: 5.0),
        Text(
          '1234',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        Container(width: 5.0),
        Text(
          '-',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Container(width: 5.0),
        Text(
          '1234',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _text3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          '유효 기간',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0XFF292929),
          ),
        ),
        Container(width: 25.0),
        Text(
          '월 (MM)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        Container(width: 10.0),
        Text(
          '/',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        Container(width: 10.0),
        Text(
          '년 (YY)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _checkButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          height: 40,
          child: ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                    content: Text(
                      "결제 카드 등록의 모든 기능을 다 배웠어요! 잘했어요! 이제 안녕!!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('이전'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('완료'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                      ),
                    ]);
              },
            ),
            child: Text(
              '결제카드 등록하기',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFF242424)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              )),
            ),
          ),
        ),
      ],
    );
  }

  Widget _checkbox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          title: const Text('모두 동의합니다.'),
          value: _isChecked1,
          onChanged: (bool? value) {
            setState(() {
              _isChecked1 = value!;
              _isChecked2 = value;
              _isChecked3 = value;
              _isChecked4 = value;
              _isChecked5 = value;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('(필수) 전자금융거래 기본 약관 동의'),
          value: _isChecked2,
          onChanged: (bool? value) {
            setState(() {
              _isChecked2 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('(필수) 개인정보 수입 이용 동의 (결제카드)'),
          value: _isChecked3,
          onChanged: (bool? value) {
            setState(() {
              _isChecked3 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('(필수) 자동승인 약관 동의'),
          value: _isChecked4,
          onChanged: (bool? value) {
            setState(() {
              _isChecked4 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('(필수) 개인정보 수집/이용 동의 (회원가입)'),
          value: _isChecked5,
          onChanged: (bool? value) {
            setState(() {
              _isChecked5 = value!;
            });
          },
        ),
      ],
    );
  }
}
