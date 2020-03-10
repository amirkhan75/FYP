import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kust/signin.dart';
import 'package:kust/signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

const TextStyle textStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Montserrat',
);

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  // final background = Container(
  //   decoration: BoxDecoration(
  //     image: DecorationImage(
  //       image: AssetImage('assets/images/background.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //   ),
  // );

  // final greenOpacity = Container(
  // color: Colors.white60,

  Widget button(String label, Function onTap) {
    return new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.6), end: Offset.zero)
            .animate(controller),
        child: Material(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(30.0),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.tealAccent,
            highlightColor: Colors.tealAccent,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final create = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xBF21BFBD),
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 15.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountDetails()),
              );
            },
            child: Text(
              "Create Acount",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            )));

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xBF21BFBD),
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 15.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingInDetails()),
            );
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 25.0,
                fontWeight: FontWeight.bold),

            //  style: Style()
            // color: Colors.white,
            //  fontWeight: FontWeight.bold)),
          )),
    );

    final logo = new ScaleTransition(
      scale: animation,
      child: Image.asset(
        'assets/images/logo.gif',
        width: 180.0,
        height: 180.0,
      ),
    );

    final description = new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.8), end: Offset.zero)
            .animate(controller),
        child: Text(
          'KUST FYP PORTAL',
          textAlign: TextAlign.center,
          style: textStyle.copyWith(fontSize: 24.0, color: Color(0xBF21BFBD)),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // background,
          // greenOpacity,
          new SafeArea(
            child: new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    width: 20.0,
                  ),
                  logo,
                  SizedBox(height: 30.0),
                  description,
                  SizedBox(height: 60.0),
                  // button('Create an account', () {

                  // }),
                  create,
                  SizedBox(
                    height: 30.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 15.0,
                  ),

                  // signWith
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
