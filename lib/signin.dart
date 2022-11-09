import 'package:flutter/material.dart';
import 'package:wallete/register.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _HoState();
}

bool isChecked = false;

class _HoState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height / 6,
              ),
              Container(
                child: Image(
                  height: size.height / 5,
                  width: size.width / 1,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Email',
                  hintText: 'Enter email',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text("Remember username/password")
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                child: InkWell(
                  // splashColor: Colors.white,
                  onTap: () {
                    print('object');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width,
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        "Log in now",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}










// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HoState();
// }

// class _HoState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           Container(
//             color: Colors.red,
//             child: Image(
//               height: size.height / 5,
//               width: size.width / 2,
//               image: AssetImage('assets/images/logo.png'),
//             ),
//           ),
//           const TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Email',
//               hintText: 'Enter email',
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Password',
//               hintText: 'Enter password',
//             ),
//           ),
//           ElevatedButton(onPressed: () {}, child: Text("Log in now"))
//         ],
//       )),
//     );
//   }
// }
