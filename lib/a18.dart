import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


class a18 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.660,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Audio (Speaker) Amplifier Using LM386',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/a18.JPG',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-16',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. This is a very basic and interesting circuit for "Self Adjusting Equal Current Sharing". The working for this circuit is describe below.\n'
                  '1. This is improved version of current mirror circuit. So, if you understand current mirror circuit you can understand this circuit easily. If you don t understand current mirror circuit, you can find current mirror circuit in this EDAC app in "Analog Circuits" category.\n'
                  '2. It is recommended that you should have knowledge for current mirror circuit.\n'
                  '3. In current mirror circuit the voltage drop across the LEDs or primary string is greater than the slave strings, so current may be little bit different in primary string from slave strings. While in this self-adjust current circuit current remains same in primary string and slave strings.\n'
                  '3. The most important for this circuit is that all transistors should operate in linear region, if anyone loose linearity and goes into saturation that equal current sharing will be lost.\n'
                  '4. The master string is with transistor Q1.\n'
                  '5. The slave strings are connected to primary string through 4.7K ohm resistor at mid point of R1 and D14.\n'
                  '6. The feedback of slave strings came through diodes D15, D16, D17, D18 and D19 to mid point of D13 and D14.\n'
                  '7. If any change in voltage (or current) changes due to any reason (e.g. temperature variation) in any slave string, feedback will come to primary string and current will be adjusted to all the string, so that current remains same in all string.\n'
                  '8. You can see that different LEDs with different forward voltages are connect in different slave strings but current is same in all strings.\n'
                  '9. This circuits dissipate power. In high power, a head sink is required for transistors and LEDs.\n'
                  '10. Power rating of resistors should also be considered, otherwise resistors can be damaged due to heat.\n'
                  'This circuit can be used to drive parallel strings of LEDs. Failure can also be detected with some added circuitry.\n'
                  'Download these files if you want to do some more experiments.\n'
                ,style: TextStyle(color: Colors.grey[600]),),
            ),
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("NOTE avaliable in assets",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),




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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:1 MB)'),
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
                  child: Text('DOWNLOAD(.RAR FILE SIZE:952.4 KB)'),
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

