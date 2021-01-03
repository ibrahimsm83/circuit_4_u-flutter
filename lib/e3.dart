import 'package:flutter/material.dart';


class e3 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.830,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Automatic Voltage Stablizer',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Example Projects",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.45,
                width: width*0.95,
                child: Image.asset('assets/e3.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-02',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('The schematic and simulation is made in Proteus 7.10. This is very simple and easy to understand circuit for automatic voltage stabilizer. To understand the working of this circuit you should have knowledge of\n'
                  'a) Auto-transformer (see Electrical circuits category in this app)\n'
                  'b) Operational Amplifier (Op-amp) as a comparator (see Operational amplifier category).\n'
                  'c) Op-amp as a comparator with hyterisis (to avoid chattering of relay), (see Operation amplifier category).\n'
                  'd) How to drive a relay (see analog circuits category).\n'
                  'The working of the circuit is given below\n'
                  '1. Once you know the above four concept, you will easily understand this circuit.\n'
                  '2. In this circuit, LM324 is used as a comparator with hysteresis to avoid chattering of any Relay.\n'
                  '3. Transistor 2N3904 is used as relay driver.\n'
                  '4. A voltage divider is made using R1 1Kohm and R2 1Kohm (variable resistor can also used in place of R1 to modify upper or lower range of stabilizer)\n'
                  '5. A voltage regulator of 12V should be used at the output of capacitor C1 to drive relay properly and for LM324 supply (download complete files, regulator is included in pcb).\n'
                  '6. Four zener diodes D7-D10 (8.2V, 7.5V, 6.8V and 6.2V) are used as voltage reference to compare the input voltages of 200V, 180V, 165V and 150V approx, you can adjust or modify these the voltage references by chaning the zener diode of your desired value.\n'
                  '7. Auto-transformer windings (tappings) are connected with normally close NC pin of Relay.\n'
                  '8. Normally open (NO) pin of each relay is connected with the common pin of next relay.\n'
                  '9. The Live output is taken from common pin of 1st relay with respect to Neutral.\n'
                  'Application:\n'
                  '1. This circuit is used to stabilize the voltage within acceptable window.\n'
                  '2. Stabilizer is used to maintain the voltage where there are low mains utility voltage.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:185.5 KB)'),
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
                  child: Text('DOWNLOAD(.LYT FILE SIZE:56.5 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:1.5 MB)'),
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

