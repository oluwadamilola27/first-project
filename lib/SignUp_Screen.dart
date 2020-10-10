import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _username = TextEditingController();
  TextEditingController _email =TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Image.asset("assets/image/mysecond.jpg"),
                height: 250.0,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Create New Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        )
                      ],
                    ),
                    _inPutForm(),
                    SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                      child: Row(
                      children: <Widget>[
                        Radio(value: null, groupValue: null, onChanged: null),
                        RichText(text: TextSpan(
                            text: 'I have accepted the',
                            style:TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: 'Terms & Condition',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                        ),
                      ],
                    )
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 1.4 * (MediaQuery.of(context).size.height / 20),
                            width: 5 * (MediaQuery.of(context).size.width / 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: RaisedButton(
                                elevation: 5.0,
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "SignIn",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    letterSpacing: 1.5,
                                    fontSize:
                                    MediaQuery.of(context).size.height / 40,
                                  ),
                                )))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );

  }

  Widget _inPutForm() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
          width: 10.0,
        ),
        TextFormField(
          controller: _username,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Username'),
        ),
        SizedBox(
          height: 20.0,
          width: 10.0,
        ),
        TextFormField(
          controller: _email,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Email'),
        ),
        SizedBox(
          height: 20.0,
          width: 10.0,
        ),
        TextFormField(
          controller: _password,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Password'),
        ),
        SizedBox(
          height: 20.0,
          width:10.0 ,
        ),
        TextFormField(
          controller: _confirmPassword,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Confirm Password'),
        ),
        SizedBox(
          height: 20.0,
          width:10.0 ,
        ),
      ] ,
    );
  }
}
