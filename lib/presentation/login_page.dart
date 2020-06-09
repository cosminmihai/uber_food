import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/auth/google_sign_in.dart';
import 'package:uber_food/models/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void onResult(dynamic action) {
    if (action is GoogleConnectSuccessful) {
      Navigator.pushNamed(context, '/homePage');
    } else {
      print(action);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      child: Image.asset('res/UberFood-IconLogo.png'),
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
                          validator: (String value) {
                            if (!EmailValidator.validate(value)) {
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
                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)),
                            controller: passwordController),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.blue[500],
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            print('Login Successful');
                          }
                        },
                        elevation: 11,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
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
              const SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text('or, connect with'),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.blue,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: () async {
                              StoreProvider.of<AppState>(context).dispatch(GoogleConnect(onResult));
                            },
                            child: const Text('Google'),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.indigo,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: () {},
                            child: const Text('Facebook'),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Don\'t have an account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          onPressed: () {},
                          child: const Text('Sign up'),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
