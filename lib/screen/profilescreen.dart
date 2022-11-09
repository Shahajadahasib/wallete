import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.support_agent_outlined),
        centerTitle: true,
        title: const Text("Wallet"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Language',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(
              height: 1,
              thickness: 2,
              color: Colors.red,
            ),
            Container(
              height: size.height / 4,
              width: size.width,
              alignment: Alignment.center,
              color: Colors.black,
              child: const Text(
                'Announcements',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color.fromRGBO(145, 28, 116, .6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.business,
                          color: Colors.white,
                          size: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Company',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Global Top Marketing Agency',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 38,
                          color: Colors.white,
                        )
                      ],
                    )
                    // Text(
                    //   'Your Account',
                    // ),
                    // Text(
                    //   "\$ 200.89 USD",
                    //   style: TextStyle(fontSize: 30, color: Colors.green),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width / 3,
                    color: const Color.fromRGBO(145, 28, 116, .6),
                    child: const Text(
                      "Site Navigation",
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(145, 28, 116, .6),
                    height: 2,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(
                  color: Color.fromRGBO(145, 28, 116, .6),
                  icon: Icons.request_quote_rounded,
                  text: 'Recharge',
                ),
                _buildIcon(
                  color: Color.fromRGBO(212, 51, 32, .7),
                  icon: Icons.credit_score,
                  text: 'Withdrawal',
                ),
                _buildIcon(
                  color: Color.fromRGBO(134, 188, 55, 1),
                  icon: Icons.stacked_line_chart,
                  text: 'Salaty\nDescriptions',
                ),
                _buildIcon(
                  color: Colors.red,
                  icon: Icons.system_update,
                  text: 'Download\nApp',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(
      {required Color color, required IconData icon, required String text}) {
    return Column(
      children: [
        Card(
          color: color,
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              size: 40,
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
