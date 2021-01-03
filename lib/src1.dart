import 'package:flutter/material.dart';



class src1 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.590,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Fan Regulator or Lamp Dimmer',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("SCR TRIAC & DIAC",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/scr1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-06-01',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                  },
                ),
                /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


              ],
            ),
            Container(
              padding: EdgeInsets.only(top:0,bottom: 0,left: 5.0),
              child:Row(//Description
                children: <Widget>[
                  Text('Description',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0),
              child:Text("This circuit is designed and simulated in Proteus 7.10. This circuit is made by using DIAC and TRIAC. The working of this circuit is given below.\n"
                  "1. Both DIAC and TRIAC are bidirectional semiconductor switch.\n"
                  "2. The working of DIAC can be understand in previous circuit of 110V LED Flasher circuit.\n"
                  "3. TRIAC is a three terminal device, one is gate and other are main terminal 1 and 2, denoted as MT1 and MT2.\n"
                  "4. TRIAC can be assumed as back to back connected SCR.\n"
                  "5. The C2 and R2 are used for noise filtration.\n"
                  "6. C1 is also used for noise filtration and false trigering of DIAC and SCR.\n"
                  "7. The value of DIAC D1 can be selected between 20V to 50V, the recommended value is DB2 or DB3.\n"
                  "8. The TRIAC U1 can be selected to withstand at least 100W load, the recommended value of TRIAC is BT136 or BT139.\n"
                  "9. It is recommended to use heat sink with TRIAC.\n"
                  "10. The firing angle of TRIAC is controlled using variable resistor RV1 of 500K.\n"
                  "11. The Proteus does not have active model of 220V fan, so a Lamp is used.\n"
                  "12. The inductor L2 of 20uH is used to model inductive behavior, as fan is an inductive load.\n"
                  "Application:\n"
                  "1. This circuit can be used as a lamp dimmer.\n"
                  "2. This circuit can be used as a Fan dimmer (or regulator).\n"
                  "Precautions:\n"
                  "1. THIS CIRCUIT IS DANGEROUS, BECAUSE THERE ARE LIVE VOLTAGES AT THE R1, SO BE EXTRA CAREFUL WHILE IMPLEMENTING THIS CIRCUIT.\n"
                  "2. USE SAFETY GLOVES BEFORE USING OR TURN ON THIS CIRCUIT.\n"
                  "3. DON'T MAKE AND RUN THIS CIRCUIT ALONE. THERE SHOULD BE SOMEONE NEAR TO OBSERVE YOU WHILE YOU ARE WORKING ON THIS CIRCUIT.\n"
                  "Before practical you can download these files and perform simulation experiments for more understanding.\n",style: TextStyle(color: Colors.grey[600]),),
            ),
/*
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("Schematic File",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),*/




            //Downloade files
            Row(
              children: <Widget>[
                Text("Schematic File",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation:10.0,
                  onPressed: (){},
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.DSN FILE SIZE:120.9 KB)'),
                ),
              ],
            ),
/*

            Row(
              children: <Widget>[
                Text("Hex File",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation:10.0,
                  onPressed: (){},
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.HEX FILE SIZE:17 KB)'),
                ),
              ],
            ),
*/
/*

            Row(
              children: <Widget>[
                Text("Program Files",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation:10.0,
                  onPressed: (){},
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('VIEW'),
                ),
              ],
            ),


*/
            Row(
              children: <Widget>[
                Text("Source Files",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation:10.0,
                  onPressed: (){},
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:612.8 KB)'),
                ),
              ],
            ),

            //Source File code
            //source file code end
          ],
        ),
      ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter layout demo',
      home: Scaffold(


        // Text('Flutter layout demo'),

        body:ListView(
          children: [
            showdescription,
          ],
        ),
      ),
    );
  }
}

