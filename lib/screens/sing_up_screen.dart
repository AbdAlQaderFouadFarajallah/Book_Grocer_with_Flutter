import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              const SizedBox(height: 15),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0XFF5ABD8C),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, color: Color(0XFF212621)),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'First & Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Mobile Phone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Group Special Code (optional)',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 23),
              Row(),
              const SizedBox(height: 25),
              Center(
                child: Container(
                    height: 56,
                    width: 335,
                    color: const Color(0XFF5ABD8C),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sing Up',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
