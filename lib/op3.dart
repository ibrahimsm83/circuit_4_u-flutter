import 'package:flutter/material.dart';



class op3 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.520,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Op-Amp as Comparator With Hystresis ',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Operational Amplifier",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/op3.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-23',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("The circuit is designed and simulated in Proteys 7.10. In this circuit you will learn how operational amplifier (op-amp) can be used as comparator with Hysteresis. The working of this circuit is given below.\n"
                  "1. To understand this circuit, you must know how to use op-amp as comparator.\n"
                  "2. If you don't know how to use op-amp as a comparator, then first see the op-amp as comparator in this app (just below this circuit in Operational Amplifier category).\n"
                  "3. This circuit is the advance form of comparator with hysteresis. Hysteresis is used where there is fluctuation of noise in the signal.\n"
                  "4. The hysteresis makes window of input for output to change, and changes the output at mid-point of hysteresis.\n"
                  "5. In this circuit LM324 is used for op-amp, and a zener of 3.3V is used as a reference voltage and non-invertering pin.\n"
                  "6. The input signal is given at inverting input.\n"
                  "7. The feedback with R1 (1k) and R2 (10K) is used at non-inverting input to make hysteresis.\n"
                  "8. The hysteresis (H) formula for calculation of R1 and R2 is given in LM324 datasheet, which is\n"
                  "H = (R1/(R1+R2)).(VoH - VoL)\n"
                  "9. You can see the working of hysteresis in the animation and compare this working with simple comparator.\n"
                  "10. The output goes high when the voltage signal at inverting pin is lower by the hysteresis window (in this circuit <=3.0V) and the output goes low when the voltage signal at inverting pin is greater then the hysteresis window (in this case >4V).\n"
                  "Application\n"
                  "1. This circuit is used where a relay is operating at the comparator decision. By using hysteresis chatering of relay can be avoided.\n"
                  "2. This circuit can be used in automatic voltage stabilizer, where more than one relays are used.\n"
                  "Download these files for performing more experiments.\n",style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:23.2 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:174.2 KB)'),
                ),
              ],
            ),
            //Source File code
            /*Row(
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
                  child: Text('DOWNLOADE(.ZIP FILE SIZE:49.1 KB)'),
                ),
              ],
            ),*/
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

