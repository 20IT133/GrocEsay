import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocesay/login_c.dart';
import 'package:grocesay/signup_c.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_customer(),
    ),
  );
}

class login_customer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 100.0)),
                Text(
                  "Welcome customer",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'
                   )
              ),
            )
            ),
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 50.0)),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login_c()));
                  },
                  color: Colors.green[500],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50) 
                  ),
                  child: Text("Login",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => signup_c()));
                  },
                  color: Colors.green[500],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50) 
                  ),
                  child: Text("SignUp",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),),
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

