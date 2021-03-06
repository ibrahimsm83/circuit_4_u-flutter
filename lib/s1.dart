import 'package:flutter/material.dart';



class s1 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*2.350,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('PIC12F675 Forward Converter',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/s1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-06-13',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is simulated in Proteus 7.10. While code is written in MpLab X IDE using XC8 compiler. The microcontroller used in this project is PIC12F675. A Forward converter is made by generating PWM through microcontroller. The working of this project is given below.\n'
                  '1. To understand the working of this circuit, first see previous circuit "PWM Generator With Duty Cycle Control". New circuits are added daily. Comeback daily to get new amazing circuits.\n'
                  '2. In this circuit, a Forward converter is made using PIC12F675 (it is used just to generate PWM, if you have some other source of PWM then you can use that source).\n'
                  '3. The forward converter is just like buck converter except transformer turns ratio, the output voltage Vo formula for Forward converter is\n'
                  '   Vo = Vin*D*Ns/Np\n'
                  '   where D is duty cycle (0.1 to 0.45).\n'
                  '4. To derive the mosfet Q1 (IRF3205), a npn transistor Q2 (2N3904) is used, because Q1 should operate in saturation or cutt-off region.\n'
                  '5. This circuit is design to step down 12Vdc to 5Vdc input voltage of Forward converter is 12V, and output voltage is less than 12V (that is around 5V as shown in animation).\n'
                  '6. The resistor R1 is the load resistor, switching circuit should be operate with some load, otherwise the control is difficult.\n'
                  '7. The output voltage can be controlled by changing the duty cycle of mosfet Q1 through potentiometer RV1.\n'
                  '8. It is recommended that the duty cycle should be less than 50%.\n'
                  '9. The frequency can also be changed by changing RV2.\n'
                  '10. The value of transformer inductance is selected according to switching frequency, and it is inversely proportional.\n'
                  '11. The capacitors C1, C2 and C3 are filter capacitors.\n'
                  '12. The LED D2 is used as indication of output voltages.\n'
                  '13. When the mosfet Q1 is ON, it connects the transformer primary inductor to ground, and inductor is charged and stores electrical energy. Also at this time the positive voltage is appear at Diode D1 and output inductor also charges.\n'
                  '14. When the mosfet Q1 is OFF, the inductor (primary side of transformer) releases its energy, and inductor energy transferred to output voltage, so the D1 is reverse biased and D3 is forward biased when the Q1 is OFF.\n'
                  '15. The LM is reset winding, and its inductance or turns are almost equal to the primary turns of transformer. It provides reset path for transformer energy through diode D4.\n'
                  '16. The current direction can be seen using arrows.\n'
                  '17. The diode D1 is used to block the reverse voltages, when Q1 is OFF the diode D1 is reverese biased.\n'
                  '18. The transformer is best utilized in forward converter, as compare to flyback.\n'
                  '19. Therefore the forward converter is more efficient than flyback converter. But forward converter needs more component requirement than flyback.\n'
                  'Application:\n'
                  '1. This circuit can be used to understand the concept of a Forward converter.\n'
                  '2. This circuit can be used as variable Forward converter for DC input upto 200W.\n'
                  '3. The Forward converter is best suitable for power rating 100W to 200W.\n'
                  'Download these files to perform more experiments.\n'
              'Come back daily to get new amazing circuits.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:106.6 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:176.6 KB)'),
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

