import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


class a3 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.600,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Single Diode Voltage Clipper',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Analog Circuits",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/a3.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-08-05',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("This circuit is designed and simulated in Proteus 7.10. In this circuit you will learn how a diode is used to clip the voltage. This circuit is very simple and easy to understand. The working of this circuit is given below.\n"
                  "1. This circuit consists of just two components, a resistor and a diode.\n"
                  "2. A sinusoidal (sine wave) signal of peak amplitude 6V and 50Hz is applied at the input.\n"
                  "3. A resistor is placed in series with the input signal and diode.\n"
                  "4. The output wave form is taken across the diode D1.\n"
                  "5. The oscilloscope is connected at both input and output points to see the difference of input and output waveform.\n"
                  "6. The input wave is shown in yellow color and its ground (reference) point is shown in pink line.\n"
                  "7. The output wave is shown in blue color and its groud (reference) point is shown in green line.\n"
                  "8. The sinusoidal wave has two cycles, positive and negative.\n"
                  "9. When positive cycle comes, the diode D1 is forward biased, and current will flow through the circuit.\n"
                  "10. As we know from previous rectifier circuits that voltage drop across the diode is 0.7V, which can be seen in output wave form, and remaining voltage will drop across resistor\n"
                  "11. When negative cycle comes, the diode D1 becomes reverse bias and it cannot conduct, which means the diode is off and circuit is open and no current will flow through resistor, so voltage drop across resistor is zero. Therefore we see all the voltages at output.\n"
                  "12. So, we see that positive cycle is clipped (reduced) at 0.7V and negative cycle is not clipped, it appears as it is at output.\n"
                  "13. As only one side of input wave is clipped, therefore this circuit is called single side diode voltage clipper.\n"
                  "Application:\n"
                  "1. This circuit can be used to clip the voltage.\n"
                  "2. This circuit can be used to understand the diode clipper.\n"
                  "Note:\n"
                  "New circuits are added on daily, weekly and monthly basis. So come back daily to get new amazing circuits. In next circuit more advance clipper will be shown.\n",style: TextStyle(color: Colors.grey[600]),),
            ),
/*
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),*/
            /*Row(
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:69.3 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:104.4 KB)'),
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
             //pic downloade link
             Row(
              children: <Widget>[
                Text("image File",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation:10.0,
                  onPressed: ()async{
                  final status= await Permission.storage.request();
                  if (status.isGranted){
                    final externalDir=await getExternalStorageDirectory();
                   await FlutterDownloader.enqueue(url: "https://drive.google.com/file/d/1OhcvipQ_p4Mj_x4PMGKKUVz_C8uN94hR/view?usp=sharing", 
                    savedDir: externalDir.path,
                    fileName: "downloade",
                    showNotification: true,
                    openFileFromNotification: true,
                    );
                  }else{
                    print("Permission Denied");
                  }
             }, 
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.JPG FILE 12.0 KB)'),
                ),
              ],
            ),

            //image file end
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

