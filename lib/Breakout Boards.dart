import 'package:flutter/material.dart';
import 'package:pdfwithassets/89c51.dart';
import 'package:pdfwithassets/b1.dart';
import 'package:pdfwithassets/b2.dart';
import 'package:pdfwithassets/b4.dart';
import 'package:pdfwithassets/b5.dart';
import 'package:pdfwithassets/b6.dart';
//import 'package:flutter/rendering.dart';
import 'package:pdfwithassets/newpage.dart';
import 'package:pdfwithassets/page1.dart';
import 'package:pdfwithassets/switchmodepowersupply.dart';

import '555 Timer.dart';
import 'Analog Circuit.dart';
import 'Arduino Circuits and project.dart';
//import 'Breakout Boards.dart';
import 'Digital Circuit.dart';
import 'Electrical Circuit.dart';
import 'Example Projects.dart';
import 'Linear powersupply.dart';
import 'Miscellanous.dart';
import 'Operational Apmlifier.dart';
import 'Oscillator.dart';
import 'PIC12F675.dart';
import 'Scr tric and diac.dart';
import 'Transitior Logic.dart';
import 'b3.dart';
import 'logicgates.dart';




class Breakoutboards extends StatefulWidget {
  @override
  State createState()=>new BreakoutboardsState();
}
class BreakoutboardsState extends State<Breakoutboards>{
//drop down list
  final List<String> association=["All","89c51","Transistor Logic","Breakout Boards","Example Projects","Basic Circuit","Miscellaneous","Linear Power Supply","Switch Mode Power Supplies","SCR TRIAC & DIAC","Filter","Analog Circuit","Arduino Circuits & Projects","PIC12F675","Electrical Circuits","Operational Amplifier","Digital Circuits","555 Timer","Oscillators","Logic Gates"];
  String selectAssociation="Breakout Boards";
//drop down list
  @override
  Widget build(BuildContext context){

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
/*
    //custome widget
    Widget titleSection=Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Image.asset(
              'assets/81.JPG',
              fit:BoxFit.cover
          ),
          const ListTile(
            //leading: Icon(Icons.album),
            title: Text('Interfacing 20x4 LCD with AT89C51'),
             subtitle: Text('Use Proteus 7.10 for simulation. All necessary files are \n given .Thus program is just for beginners understanding..'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),

    );
    //Custom Widget*/

    return Scaffold(

      appBar:AppBar(

        backgroundColor: Colors.white,

        //centerTitle: true,
        title: TextField(
          style: TextStyle(fontSize: 17),
          decoration: InputDecoration(
            hintText: "Search Circuits",
            suffixIcon: Icon(Icons.search),
            // prefixIcon: Icon(Icons.search),
          ),

        ),


        /*
           Text('Search Circuit',style: TextStyle(color: Colors.grey,fontSize: 17)),
//Search icon
           actions:<Widget>[
  IconButton(
            icon: const Icon(Icons.search,color: Colors.grey,),
            //tooltip: 'Next page',
            onPressed: () {
              print("Cclikckedd");},),
   ],
*/
      ),

      body:
      Container(
        //

        //

        child:
        ListView(
          children: <Widget>[
            Container(
              color: Colors.orange,
              child:Column(
                children:[
/*
       Container(
                            height: 50.0,
                            margin: EdgeInsets.only(top:30),
                            child: Material(
                             // elevation: 18,
                              //borderRadius: const BorderRadius.all(
                               // const Radius.circular(10.0),
                              //),
                              shadowColor: Colors.grey[200],
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    //contentPadding:
                                      //  EdgeInsets.fromLTRB(20, 0, 0, 10),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // border: InputBorder.none,

                                    icon: new Icon(Icons.search,color: Colors.grey,),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: 'Search Circuits',

                                    hintStyle: TextStyle(
     color: Colors.grey, // <-- Change this
     fontSize: 18,
     fontWeight: FontWeight.w400,
     fontStyle: FontStyle.normal,),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          */
                  // dropdown

                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    margin: EdgeInsets.only(top:7.0),
                    child:Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //width: double.infinity,

                        Container(
                          //color: Colors.green,
                          height: 50.0,
                          // width: 250,

                          margin: EdgeInsets.only(top:0.0,right: 110),

                          child: Material(
                            // elevation: 18,

                            // borderRadius: const BorderRadius.all(
                            // const Radius.circular(10.0),
                            //),
                            shadowColor: Colors.white,
                            child: DropdownButton<String>(
                                value:selectAssociation,
                                onChanged: (value) {
                                  setState(() {
                                    selectAssociation = value;

                                  });
                                },
                                items: association.map<DropdownMenuItem<String>>((value){
                                  return DropdownMenuItem(

                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left:6.0),
                                      child:
                                      new InkWell(
                                        onTap: ()


                                        { if(value == "89c51"){ Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>c15(),
                                                settings: RouteSettings(arguments: value,))
                                        );
                                        }

                                        else if(value=='Transistor Logic'){ Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>transitorlogic(),
                                                settings: RouteSettings(arguments: value,))
                                        );
                                        }

                                        else if(value=='Breakout Boards'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Breakoutboards(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Example Projects'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Exampleproject(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Basic Circuit'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>NewPage(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Miscellaneous'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Miscellanous(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Linear Power Supply'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Linearpowersupply(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Switch Mode Power Supplies'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>switchmodepowersupply(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='SCR TRIAC & DIAC'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Srctricanddiac(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Filter'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>NewPage(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Analog Circuit'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>AnalogCircuit(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }

                                        else if(value=='Arduino Circuits & Projects'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>ArduinoCircuitsProjects(),
                                                  settings: RouteSettings(arguments: value,))
                                          );}
                                        else if(value=='PIC12F675'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>PIC12F675(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }
                                        else if(value=='Electrical Circuits'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>ElectricalCircuits(),
                                                  settings: RouteSettings(arguments: value,))
                                          );}
                                        else if(value=='Operational Amplifier'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>OperationalAmplifier(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }

                                        else if(value=='Digital Circuits'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>DigitalCircuits(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }
                                        else if(value=='555 Timer'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>TriplefiveTimer(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }
                                        else if(value=='Oscillators'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Oscillators(),
                                                  settings: RouteSettings(arguments: value,))
                                          );  }
                                        else if(value=='Logic Gates'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>LogicGates(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='All'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Welcomepage(),
                                                  settings: RouteSettings(arguments: value,))
                                          );

                                        }
                                        else{
                                          print(value);
                                        }
                                        }   ,
                                        /* {Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>NewPage(),
                                            settings: RouteSettings(arguments: value,))
                                          );
                                        },
*/                                        child: Text(value,style: TextStyle(fontSize: 17,
                                          color: Colors.grey),),
                                      ),
                                    ),

                                    value: value,
                                  );

                                }).toList()

                            ),
                          ),
                        ),



/*
 //list tile
       Container(
         margin: EdgeInsets.only(top:10.0),
  //color: Colors.greenAccent,

child:
 ListView(
      children: [

        titleSection,
        /*
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection
        */
    ],
     ),
),
 //listView
 */

                      ],
                    ),
                  ),
                  //

                  /*
         Container(
  margin: EdgeInsets.only(top:10.0),
  child:

 Column(
     children: [


            Card(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Image.asset(
                            'assets/c2.png',
                             fit:BoxFit.cover
                            ),
                  const ListTile(
                    //leading: Icon(Icons.album),
                    title: Text('Title Name of Circuit'),
                    subtitle: Text('Logica and Circuitcal designs. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                        onPressed: () {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),

),
              ],

 ),

),
*/
/*
//2nd container
 Container(
  margin: EdgeInsets.only(top:10.0),
  child:

 Column(
     children: [


            Card(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Image.asset(
                            'assets/c2.png',
                             fit:BoxFit.cover
                            ),
                  const ListTile(
                    //leading: Icon(Icons.album),
                    title: Text('Title Name of Circuit'),
                    subtitle: Text('Logica and Circuitcal designs. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                        onPressed: () {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),

),
              ],

 ),

),

//2nd container end
    */
                  InkWell(

                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>b1(),
                            )
                        );

                      },

                      child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b1.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Breakout Board for 80 Pin dsPIC30F6014A'),
                            subtitle: Text('This is a generic Breakout boards for 80 pins\ndsPIC30F6014a. The schematic and pcb is designed in..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-04-11',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b2(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/b2.bmp',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F and PIC16F 40pin Breakout Board'),
                            subtitle: Text('This schematic and PCB is made in Proteus 8.6. This just\nfor beginners. Tracks which are in red color are jumpers..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b3(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.40,
                            child: Image.asset(

                                'assets/b3.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F Breakout Board PCB'),
                            subtitle: Text('This schematic and PCB is made in Alitium Designer.This\n just for beginners.Track which are blue in color are ju..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('    Breakout Boards\n             2020-03-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(    onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>b4(),
                        )
                    );

                  },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b4.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Adapter PCB for 100pin Microcontroller'),
                            subtitle: Text('The schematic and PCB is made in Altium Designer .Use\nlatest version of Altium Designer to make changes.PDF..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b5(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b5.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('General Breakout Board for 64pin SMD IC'),
                            subtitle: Text('This is a general board for 64 pin SMD Microcontrollers.\nFor example you can any dsPIC33 series 64pin SMD..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b6 (),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b6.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F General Circuit'),
                            subtitle: Text('This is a general Break out board for 18F series\nUse Proteus 8.6 for simulation and viewing PCB layout..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  /*titleSection,
                  titleSection,
                  titleSection,
                  titleSection,
                  titleSection*/
                ],
              ),

            ),
          ],
        ),
      ),
    );

  }
}
