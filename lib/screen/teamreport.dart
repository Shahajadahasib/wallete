import 'package:flutter/material.dart';

class TeamReport extends StatefulWidget {
  const TeamReport({super.key});

  @override
  State<TeamReport> createState() => _TeamReportState();
}

class _TeamReportState extends State<TeamReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Referral code'),
                  Text('1 2 3 4 5'),
                ],
              ),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Copy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Copy the invitation link'),
                  Text('dshfoisdhgfogiweowhgf'),
                ],
              ),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Copy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
