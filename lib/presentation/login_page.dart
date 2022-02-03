import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onResult(dynamic action) {
    if (action is SignInWithGoogleSuccessful) {
      Navigator.pushReplacementNamed(context, '/homePage');
    } else {
      print(action);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image.asset('res/app_logo.png'),
                ),
                Card(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  elevation: 11,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        focusColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black26,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black26),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                      ),
                      controller: emailController,
                      validator: (String? value) {
                        final String text = value ?? '';
                        if (!EmailValidator.validate(text)) {
                          return 'Please enter a valid email address.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  elevation: 11,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Form(
                    child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black26,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                        ),
                        controller: passwordController),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue[500]),
                      elevation: MaterialStateProperty.all(11),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Login Successful');
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(height: 100),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Text('or, connect with'),
                const SizedBox(height: 16.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          StoreProvider.of<AppState>(context).dispatch(SignInWithGoogle.start(result: _onResult));
                        },
                        child: const Text(
                          'Google',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
