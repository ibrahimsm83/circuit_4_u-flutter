import 'package:flutter/material.dart';


class e2 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.730,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Battery Charger Circuit + PCB(Upto 2A)',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Example Projects",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/e2.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-08',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. This is a linear battery charger upto 2A, it can be used for mobile battery charger or can be used to charge the lead acid battery charger. The working of battery charger is given below.\n'
                  '1. L200 is an adjustable voltage upto 37V and adjustable current regulator upto 2A.\n'
                  '2. This circuit has two optional input source, both cannot be used at the same time.\n'
                  '3. One input source is DC voltage upto 40V and other source is AC voltage upto 24Vac. But only one input source should be used at a time.\n'
                  '4. This circuit has two controls, one is output voltage and other is output current.\n'
                  '5. The output current can be control by current limiting resistor R2, in this circuit it is limited by 2A using 0.22ohm, which means maximum output current is 2A.\n'
                  '6. The maximum current can be reduced by increasing the resistor R2.\n'
                  '7. For output voltage vontrol, resistors R1 and RV1 are used, R1 is fixed so the output voltage can be vary by varying RV1.\n'
                  '8. The R2 is used in series to limit the current, the voltage drop across R2 is Io*0.22.\n'
                  '9. For battery full indication zener diode D3 of 2.4V (selected for mobile battery and lithium ion cell) is used, for 12V battery use 10V zener and for 6V battery use 3.1V zener.\n'
                  '10. When battery is full the LED D2 will glow.\n'
                  '11. The LED D1 is charger ON indication.\n'
                  '12. For mobile battery or lithium ion cell, set charging voltage at 4.25V and for 6V battery set 7.2V and for 12V lead acid battery, set charging volt at 14.6V, and for 24V battery set 29.2 charging voltage.\n'
                  'Applications:\n'
                  '1. This circuit can be used to control the maximum output current (upto 2A).\n'
                  '2. This charger can be used to charge mobile battery.\n'
                  '3. This circuit can be used to charge any battery or cell upto 24V battery.\n',style: TextStyle(color: Colors.grey[600]),),
            ),
            /*Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("Not avaliable in assets",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),
*/



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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:105.1 KB)'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Pcb Files",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
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
                  child: Text('DOWNLOAD(.LYT FILE SIZE:27.4 KB)'),
                ),
              ],
            ),
            //Source File code
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Source File",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:634.8 KB)'),
                ),
              ],
            ),
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

