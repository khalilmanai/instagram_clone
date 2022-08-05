import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class AuthenticationView extends StatefulWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: double.infinity,
                child: const Text(
                  "Instagram",
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 80,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 10, 10),
                  width: 400,
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      filled: true,
                      fillColor: Color(0xFFE8E8E8),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 10, 10),
                  width: 400,
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xFFE8E8E8),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(top: 10, right: 20),
                width: double.infinity,
                child: Text(
                  'Forgot password ?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 160, vertical: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Login with facebook'),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 1.5,
                    width: 150,
                    color: Colors.grey,
                  ),
                  Text("OR"),
                  Container(
                    height: 1.5,
                    width: 150,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Don't have an account ?"), Text("Sign in")],
              )
            ],
          ),
        ),
      ),
    );
  }
}
