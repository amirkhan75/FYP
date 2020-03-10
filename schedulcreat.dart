import 'package:flutter/material.dart';

final List<String> weekDays = ["S", "M", "T", "W", "T", "F", "S","S","M","T"];
final List<int> dates = [26, 27, 28, 29,  30,31,1,2,3,4];

class TodoTwoPage extends StatelessWidget {
  static final String path = "lib/src/pages/todo/todo2.dart";
  final int selected = 3;
  final TextStyle selectedText = TextStyle(
    color: Colors.deepOrange,
    fontWeight: FontWeight.bold,
  );
  final TextStyle daysText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.blue.shade800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Defense Group'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: HeaderWidget(
        header: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "January".toUpperCase(),
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      letterSpacing: 2.0),
                ),
              ),
              Row(
                children: weekDays.map((w) {
                  return Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: weekDays.indexOf(w) == selected
                              ? Colors.orange.shade100
                              : Colors.transparent,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0))),
                      padding: const EdgeInsets.only(top: 20, bottom: 8.0),
                      child: Text(
                        w,
                        style: weekDays.indexOf(w) == selected
                            ? selectedText
                            : daysText,
                      ),
                    ),
                  );
                }).toList(),
              ),
              Row(
                children: dates.map((d) {
                  return Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: dates.indexOf(d) == selected
                              ? Colors.orange.shade100
                              : Colors.transparent,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30.0))),
                      padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                      child: Text("$d",
                          style: dates.indexOf(d) == selected
                              ? selectedText
                              : daysText),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildAaskWithDate(),
              const SizedBox(height: 20.0),
             
            //  _buildTask(),
             // const SizedBox(height: 20.0),
             // _buildTask(),
            //  const SizedBox(height: 20.0),
              _buildBaskWithDate(),
              const SizedBox(height: 20.0),
              //  _buildtaskWithDate(),
              // const SizedBox(height: 20.0),
              _buildCaskWithDate(),
              const SizedBox(height: 20.0),

              _buildDaskWithDate(),
              const SizedBox(height: 20.0),
            //  _buildEaskWithDate(),
            //  const SizedBox(height: 20.0),
               _buildFaskWithDate(),
              
           
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n29",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "10:00 - 10:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 31",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
   Row _buildBaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n29",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "11:00 - 11:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 32", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
   Row _buildCaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n29",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "2:00 - 2:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 33", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
   Row _buildDaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n30",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                         color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "10:00 - 10:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 35", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
   Row _buildEaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n29",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "2:00 - 2:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 32", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
   Row _buildFaskWithDate() {
    return Row(
                children: <Widget>[
                  Text(
                    "JAN\n30",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.teal,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "2:00 - 2:45AM",
                            style: TextStyle(
                                letterSpacing: 2.5, color: Colors.deepPurple),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            " Final Defense",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontSize: 16.0),
                          ),
                          Text("Group 36", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black),)
                        ],
                      ),
                    ),
                  )
                ],
              );
  }

 
}

class HeaderWidget extends StatelessWidget {
  final Widget body;
  final Widget header;
  final Color headerColor;
  final Color backColor;

  const HeaderWidget(
      {Key key,
      this.body,
      this.header,
      this.headerColor = Colors.teal,
      this.backColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Stack _buildBody() {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 0,
          top: 0,
          width: 10,
          height: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: backColor,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(20.0))),
          ),
        ),
        Positioned(
          right: 0,
          top: 100,
          width: 50,
          bottom: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: backColor,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            if (header != null)
              Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20.0)),
                    color: headerColor,
                  ),
                  child: header),
            if (body != null)
              Expanded(
                child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30.0))),
                    elevation: 0,
                    color: backColor,
                    child: body),
              ),
          ],
        ),
      ],
    );
  }
}