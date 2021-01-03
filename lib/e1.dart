import 'package:flutter/material.dart';


class e1 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*2.430,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('50 W Inverter 12V to220V or 110V',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/e1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-17',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("This circuit is designed and simulated in Proteus 7.10. In this circuit you will learn about the famous timer ic which is NE555. Many companies make this IC and there prefix can be changed but number will be 555, for example Texas Instruments make this IC with name LM555. Functionality will be same of both the IC's. So manufacturer doesn't matter unless the functionality is same. The 555 timer IC can be used in all multivibrator mode. It can be used as\n"
              'a) Astable multivibrator\n'
              'b) Monostable multivibrator\n'
              'c) Bistable multivibrator\n'
              'In this circuit 555 timer IC is used as monostable multivibrator mode to drive transformer in push-pull configuration for inverter. The circuit of all three modes were previously added. Come back daily to get new amazing circuit.\n'
              'The working of this circuit is given below.\n'
              '1. Monostable mode means there will be one stable level and other is unstable level at the output.\n'
              '2. The operating range of 555 timer IC is +5Vdc to 18Vdc.\n'
              '3. An RC time (product of C2 and R1) is used to make the output for certain period of time.\n'
              '4. The trigger pin is active low (1/3 of Vcc) and it will trigger the output at low or negative pulse.\n'
              '5. In this circuit the trigger (TR) pin is connected with the threshold (TH) pin and trigger pin to give a trigger pulse.\n'
              '6. In this circuit, the stable level is zero level, when a trigger pulse is applied the circuit goes to unstable state which is one state and after certain amount of time the circuit come back to its stable state which is zero state.\n'
              '7. The monostable multivibrator can be understand by the previous post of monostable multivibrator.\n'
              '8. In this circuit the frequency of multivibrator is set to 50Hz by using the time constant of R1*C2.\n'
              '9. To invert the input 12VDC voltages to 220Vac, we need to drive transformer in push-pull configuration. Therefore center tap pin is connected with battery positive terminal, and other two pins are connected with drain of MOSFETS Q2 and Q3 (IRF3205) and source of both mosfets are connected with ground.\n'
              '10. We need alternate signals at gates of Q2 and Q3. So, one gate is connected directly with 555 timer output with series resistor or 10 ohm. While second gate is connected via transistor with inverted logic (see previous circuit "Transistor as Inverter").\n'
              '11. The transformer voltage ratio should be 9V-0-9V to 230V and for 110Vac country use ration 9V-0-9V to 110Vac and also change the frequency to 60Hz by decreasing resistor value.\n'
              '12. A fuse of 0.5A in series should be connected at output.\n'
              '13. This circuit can drive maximum of 100W load. If more power is needed then increase the thickness of MOSFET tracks and transformer is replaced with the required power transformer.\n'
              "14. This circuit is only an inverter, not a ups because it doesn't have the charging circuit.\n"
              '15. The pcb file of this inverter circuit is also attached.\n'
              'Application:\n'
              '1. This circuit can be used to boost the dc voltage.\n'
              '2. This circuit can be used to drive ac load upto 100W.\n'
              '3. This circuit can be used as a timer for a specific period of time.\n'
              '4. This circuit can be used as a timer for door bell.\n'
              'Precaution:\n'
              '1. Extra care must be considered because output of transformer has high voltage (220Vac or 110Vac), which could be dangerous.\n'
              'Download these files for performing more experiments.\n'
                'New circuits are added on daily basis. The complete ups circuit will also be added soon. So, come back daily to get new exciting circuits.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:112.9 KB)'),
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
                  child: Text('DOWNLOAD(.LYT FILE SIZE:28.4 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:98.3 KB)'),
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

