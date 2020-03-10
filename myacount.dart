import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Details',
      home: Profile(),
    );
  }
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF21BFBD),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF21BFBD),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                    
                      Text(
                        'My Profile',
                        style: TextStyle(
                          color: Colors.white,
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 130.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: const EdgeInsets.only(top: 0.0,
                      left: 16.0, right: 16.0, bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/amir.jpg'),
                          radius: 80.0,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Amir Khan',
                          style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'First Name',
                        style:TextStyle(
                          color: Colors.teal,
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                        )
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'Amir',
                          hintStyle: TextStyle(
                          color: Colors.black,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0
                        )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Last Name',
                        style: TextStyle(
                          color: Colors.teal,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                        )
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'Khan',
                          hintStyle: TextStyle(
                          color: Colors.black,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0
                        )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Registration No',
                        style:TextStyle(
                          color: Colors.teal,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                        )
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'CS120162057',
                          hintStyle: TextStyle(
                          color: Colors.black,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0
                        )
                        ),
                      ),
                      
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.teal,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                        )
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'CS057AM@Kust.edu.pk',
                          hintStyle: TextStyle(
                         
                         fontFamily: 'Montserrat',
                          color: Colors.black,
                          //fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0
                        )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Semester',
                        style: TextStyle(
                          color: Colors.teal,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                        )
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'BSCS 7th',
                          hintStyle: TextStyle(
                          color: Colors.black,
                         fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0
                        )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
