import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit:BoxFit.cover,image: AssetImage("assets/image/mysecond.jpg")
              ),
            ),
            child: Positioned(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 20,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text('Back',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Padding(
                        padding:EdgeInsets.all(8.0),
                        child: Text(
                          'Create New Account',
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }

  Widget inPutForm() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
          width: 10.0,
        ),
        TextField(
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
        TextField(
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
        TextField(
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
        TextField(
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
        TextField(
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
