import 'package:flutter/material.dart';



class dc1 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.330,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Parallel in Serial Out Shift Register',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Digital Circuit",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/dc1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-24',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("This circuit is designed and simulated in Proteus 7.10. This is a simple circuit for demonstration of parallel to serial shift register. The IC used for this purpose is 74HC166. The working of this IC / circuit is given below.\n"
                  "1. There are four (4) control pins of 74HC166, which are clock (CLK), clock inhibit (INH) which is active low, shift data or load data (SH/LD) LD is active low and SH is active high, and last is master reset (MR) which is also active low.\n"
                  "2. One is serial input (SI) pin, you can ignore this pin if you are using parallel inputs.\n"
                  "3. One is serial output (SO) pin.\n"
                  "4. Eight (8) parallel input pins from D0 to D7.\n"
                  "5. The default setting should be:\n"
                  "a) MR should be high.\n"
                  "b) INH should be low.\n"
                  "c) SH/LD should be high.\n"
                  "6. The parallel to shift sequance is:\n"
                  "a) First of all set the data to the parallel inputs at D0 to D7 pins.\n"
                  "b) To load this parallel data, change SH/LD from high to low state and give a clock pulse. The data is loaded at rising edge of clock.\n"
                  "b) To shift this parallel data to serial output, change SH/LD from low to high state.\n"
                  "c) Now give clock pulses, and data is serially transmitted from D7 to D0, which is shown in animation.\n"
                  "Download these files to perform further experiments.\n",style: TextStyle(color: Colors.grey[600]),),
            ),

              Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("Schematic File",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),




            //Downloade files
            Row(
              children: <Widget>[
                Text("not avaliable in assets",style:TextStyle(fontSize:14.0,color: Colors.black,)),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:97.7 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:53.5 KB)'),
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

