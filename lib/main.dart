import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Home Screen',
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.home_filled,
            color: Colors.black,
          ), //TODO: Leading Area
        ),
        body: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (value){
                    print(value);
                  },
                  controller: TextEditingController(),
                  //enabled: false,
                  maxLength: 10,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    //label: Text('Email'),
                    labelText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1)
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 5, color: Colors.pink)
                    ),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.black)
                    ),

                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 4, color: Colors.grey)
                    ),
                    fillColor: Colors.orange,
                    filled: true,

                    prefixIcon: Icon(Icons.add),
                    prefixIconColor: Colors.green,
                    suffixIcon: Icon(Icons.add),
                    suffixIconColor: Colors.green,

                  ),
                ),
              ),



              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  //alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      //borderRadius: BorderRadius.circular(20),
                      //border: Border.all(width: 4, color: Colors.black)
                      border: Border(
                          top: BorderSide(width: 4, color: Colors.black),
                          bottom: BorderSide(width: 4, color: Colors.deepOrange)
                      ),
                      image: DecorationImage(
                          image: AssetImage('images/oskar.jpg'),
                          fit: BoxFit.cover
                      ),

                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0, 3)
                        )
                      ]
                  ),

                  child: Text('Oskar', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: TextFormField(
              //     //validator: ,
              //     controller: TextEditingController(),
              //     //enabled: false,
              //     maxLength: 10,
              //     style: TextStyle(
              //         fontSize: 24,
              //         color: Colors.orange
              //     ),
              //     decoration: InputDecoration(
              //       hintText: 'Enter your email',
              //       //label: Text('Email'),
              //       labelText: 'Email',
              //       hintStyle: TextStyle(
              //         fontSize: 23,
              //         fontWeight: FontWeight.w400,
              //       ),
              //
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: BorderSide(width: 6)
              //       ),
              //
              //       focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(16),
              //           borderSide: BorderSide(width: 4, color: Colors.pink)
              //       ),
              //
              //       enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20),
              //           borderSide: BorderSide(width: 4, color: Colors.black)
              //       ),
              //
              //       disabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20),
              //           borderSide: BorderSide(width: 4, color: Colors.grey)
              //       ),
              //       fillColor: Colors.grey,
              //       filled: true,
              //
              //       prefixIcon: Icon(Icons.add),
              //       prefixIconColor: Colors.green,
              //       suffixIcon: Icon(Icons.add),
              //       suffixIconColor: Colors.green,
              //
              //     ),
              //   ),
              // )
            ],
          ),
        )
    );
  }
}
