import 'package:cummunitypage/auth/login.dart';
import 'package:cummunitypage/cummunity_chat.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main()
 {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
    home: CummunityPage(),
  ));

}

class CummunityPage extends StatefulWidget {
  const CummunityPage({Key? key}) : super(key: key);

  @override
  State<CummunityPage> createState() => _CummunityPageState();
}

class _CummunityPageState extends State<CummunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              color: Colors.black
              ,
              borderOnForeground: true,
              elevation: 50,
              shadowColor: Colors.black,
              // color: Colors.greenAccent[100],
              child: SizedBox(
                width:double.infinity,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://st3.depositphotos.com/8950810/17657/v/600/depositphotos_176577870-stock-illustration-cute-smiling-funny-robot-chat.jpg"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          color: Colors.black,
                          child: Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Text(
                              'Flutter Developers',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ), //Textstyle
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Card(
                        elevation: 100,
                        color: Colors.black,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black54)

                          ),
                          child: Row(
                            children: [
                              Icon(Icons.touch_app),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Cummunity description"),
                              )
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        color: Colors.black,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black54)

                          ),
                          child: Row(
                            children: [
                              Icon(Icons.mail_sharp),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Go to cummunity chat"),
                              )
                            ],
                          ),
                          onPressed: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyApp(),), (route) => true);
                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        color: Colors.black,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black54)

                          ),
                          child: Row(
                            children: [
                              Icon(Icons.video_call),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Host Your Event"),
                              )
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ),//Text
                       SizedBox(
                        height: 10,
                      ), //SizedBox
                      //Text

                      SizedBox(
                        width: 100,


                        ),

                      //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ), //Card
          ),



        ],
      ),

    );
  }
}
