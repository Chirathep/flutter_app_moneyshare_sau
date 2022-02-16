// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ShowMoneyshareUI extends StatefulWidget {
  //สร้างตัวแปรรับค่า moneyshare ที่จะส่งมาจากหน้า MoneyshareUI
  double? money;
  int? person;
  double? tip;
  double? moneyshare;

  //ที่คอนสตรัส เอาตัวที่สร้างมารับค่าจากอีกหน้าหนึ่ง
  ShowMoneyshareUI({
    Key? key,
    this.money,
    this.person,
    this.tip,
    this.moneyshare,
  }) : super(key: key);

  @override
  _ShowMoneyshareUIState createState() => _ShowMoneyshareUIState();
}

class _ShowMoneyshareUIState extends State<ShowMoneyshareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        centerTitle: true,
        title: Text(
          'ผลการแชร์เงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนเงินที่จะหาร',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                widget.money.toString(),
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'บาท',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนคน',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                widget.person.toString(),
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'คน',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนทิปที่ให้น้อน ๆ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                widget.tip.toString(),
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'บาท',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'สรุปเงินที่แชร์กันคนละ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text(
                  widget.moneyshare.toString(),
                  style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                //กรอบขอบโค้ง
              ),
              Text(
                'บาท',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
