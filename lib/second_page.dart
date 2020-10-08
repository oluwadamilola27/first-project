import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/SignUp_Screen.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
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
                        'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50.0),
                      )
                    ],
                  ),
                  inputForm(),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  FlatButton(onPressed: (){}, child: Text("Forget Password"),)
                 ],
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 1.4 *(MediaQuery.of(context).size.height/20),
                          width: 5*(MediaQuery.of(context).size.width/10),
                          margin: EdgeInsets.only(bottom: 20),
                          child:RaisedButton(
                              elevation: 5.0,
                              color: Colors.grey,
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {},
                              child:Text(
                                  "Login",
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  letterSpacing: 1.5,
                                  fontSize: MediaQuery.of(context).size.height/40,
                                ),
                              )
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                    width: 5.0,
                  ),
                  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
              },
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text:'Don\'t have an account?',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: MediaQuery.of(context).size.height/40,
                      fontWeight: FontWeight.w400,
                    )
                ),
                 TextSpan(
                  text:'Sign Up',
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: MediaQuery.of(context).size.height/40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                    ],
              ),
            ),
          ),
    ),
    ],
      ),
                ],
              ),
            ),
          ],
              ),
            )
        );

  }

  Widget inputForm() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
          width: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person_outline),
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
              hintText: 'Password'),
        ),
        SizedBox(
          height: 5.0,
          width: 5.0,
        ),
      ] ,
        );
  }
}
