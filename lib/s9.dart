import 'package:flutter/material.dart';



class s9 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*2.090,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('PIC12F675 Buck Converter',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Switch Mode Power Supplies",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/s9.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-11',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is simulated in Proteus 7.10. While code is written in MpLab X IDE using XC8 compiler. The microcontroller used in this project is PIC12F675. A buck (step down) converter is made by generating PWM through microcontroller. The working of this project is given below.\n'
                  '1. To understand the working of this circuit, first see previous circuit "PWM Generator With Duty Cycle Control".\n'
                  '2. In this circuit, a buck converter is made using PIC12F675.\n'
                  '3. The output voltage Vo formula for buck converter is\n'
                  '   Vo = D*Vin\n'
                  '   where D is duty cycle (0.1 to 0.9).\n'
                  '4. To derive the mosfet Q1 (IRF4905 pmos), a npn transistor Q2 (2N3904) is used, because Q1 should operate in saturation or cutt-off region, and mosfet needs 12V to go in saturation.\n'
                  '5. The input voltage of buck converter is 12V, and output voltage is lower than 12V.\n'
                  '6. The resistor R1 is the load resistor, switching circuit should be operate with some load, otherwise the control is difficult.\n'
                  '7. The output voltage can be controlled by changing the duty cycle or mosfet Q1 through potentiometer RV1.\n'
                  '8. When the duty cycle is 50%, the output voltage will be exactly half of input voltage (use above equation for duty cycle and output voltage relation).\n'
                  '9. The frequency can also be changed by changing RV2.\n'
                  '10. The value of inductor is selected according to switching frequency, and it is inversely proportional.\n'
                  '11. The capacitors C1, C2, C3 and C5 are filter capacitors.\n'
                  '12. The LED D2 is used as indication of output voltages.\n'
                  '13. When the mosfet Q1 is ON, it connects the inductor L1 to +12Vdc, and inductor is charged and stores electrical energy in the form of current (i.e (1/2)*L*I^2) and capacitor is also charges at some voltage.\n'
                  '14. When the mosfet Q1 is OFF, the inductor releases its energy, and inductor energy is added to the output voltage (as inductor tries to maintain its current direction).\n'
                  '15. The current direction can be seen using arrows and colors.\n'
                  '16. The diode D1 is used to make the close loop for inductor to release its energy (when the mosfet is OFF) to output voltage.\n'
                  '17. Sumarizing this concept is, the inductor and capacitor are basically averaging circuit for input pulses. Therefore output voltage is always less than the input voltage.\n'
                  'Application:\n'
                  '1. This circuit can be used to understand the concept of a buck converter.\n'
                  '2. Thic circuit can be used as variable step-down or buck converter for DC input.\n'
                  'Download these files to perform more experiments.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:101.9 KB)'),
                ),
              ],
            ),

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
                  child: Text('DOWNLOAD(.HEX FILE SIZE:2.1 KB)'),
                ),
              ],
            ),

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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:428.8 KB)'),
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

