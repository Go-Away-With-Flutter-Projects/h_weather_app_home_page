import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ColumnProject(),
    );
  }
}

class ColumnProject extends StatelessWidget{

  const ColumnProject({super.key});

  @override
  Widget build(BuildContext buildContext){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          drawer: const Drawer(),
          body: Column(
              children: [
                Stack(
                    children: [
                      Image.asset(
                        'images/weather.jpg',
                        height: 725.09,
                        width: double.maxFinite,
                        fit: BoxFit.fill,
                        //color:Color.fromARGB(62, 66, 93, 106),
                        //colorBlendMode: BlendMode.multiply,

                      ),
                      Container(
                        // clipBehavior: Clip.hardEdge,
                        alignment: Alignment.topCenter,
                        child: Container(
                          // clipBehavior: Clip.hardEdge,
                          alignment: Alignment.center,
                          width: 300,
                          height: 300,
                          margin: const EdgeInsets.only(top: 55,),
                          decoration: BoxDecoration (
                            // backgroundBlendMode: BlendMode.modulate,
                            color: const Color.fromARGB(215, 94, 123, 136),
                            border:  Border.all(color:const Color.fromARGB(255, 190, 165, 165), width: 1),
                            borderRadius:  BorderRadius.circular(200),
                            boxShadow: const [
                              BoxShadow(
                                color:Color.fromRGBO(190, 165, 165, 1),
                                blurRadius: 5,
                                spreadRadius: 0.5,
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                          ),
                          child: Text(
                              'Weather',
                              style: GoogleFonts.badScript(
                                  fontSize: 75,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 18, 23, 84)
                              )
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          )
      ),
    );
  }
}