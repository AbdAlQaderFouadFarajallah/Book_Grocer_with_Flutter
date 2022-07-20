import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

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
                'Sign In',
                style: TextStyle(fontSize: 24, color: Color(0XFF212621)),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Optional Group Special Code',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: 'Email Address',
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
                        'Sing In',
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
