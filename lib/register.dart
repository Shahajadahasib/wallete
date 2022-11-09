import 'package:flutter/material.dart';
import 'package:wallete/screen/profilescreen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  hintText: 'please input your email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Password',
                  hintText: 'please enter the login password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Confirm Password',
                  hintText: 'please confirm your password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Transcation password',
                  hintText: 'please enter the transcation password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Invitation Code',
                  hintText: 'plese enter the invitation Code',
                ),
              ),
              const SizedBox(
                height: 20,
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
                        "Register now",
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
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                child: const Text(
                  'Have an account, Go log in now',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        )),
      ),
    );
    ;
  }
}
