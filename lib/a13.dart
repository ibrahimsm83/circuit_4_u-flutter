import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


class a13 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*2.270,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Transformerless Power Supply',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/a13.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-27',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. This is a simple circuit for making transformerless power supply from mains input (220Vac or 110Vac). The working of this circuit is given below.\n'
                  '1. In this circuit, you will learn two concepts:\n'
                  'a) How a capacitor is used to divide mains AC voltage (220Vac rms or 110Vac rms).\n'
                  'b) How a stable transformerless power supply is made from mains (220Vac or 110Vac).\n'
                  '2. For selection of capacitor you should know at least the input voltage and the current.\n'
                  '3. Then find its resistance (reactace) X = V/I, V can be 110V or 220V.\n'
                  '4. Value of capacitor can be calculated by using this formula\n'
                  '   C = 1/(2*pi*f*X)\n'
                  '   f can be 50Hz or 60Hz\n'
                  '5. When the mains power is applied to the circuit, the voltage drops across the capacitor by V = IX.\n'
                  '6. Which means there should be almost constant load (current) and constant mains voltage, otherwise the output voltage will vary with respect to the load or mains input voltage.\n'
                  '8. Use series circuit (a 100W bulb is placed in series with the mains) for safety to test this circuit.\n'
                  '8. Mains voltage can vary so use zener diode at the input of 7805 or 7812 regulator for stability.\n'
                  '9. The wattage of zener should be considered according to the current.\n'
                  '10. Once you make this circuit and tested successfully, then remove series lamp and place your real load.\n'
                  '11. The R2 & R4 (1M ohm 2W) are placed for safety, to discharge the capacitors C1 and C6 when the circuit is OFF.\n'
                  '12. There are many types of capacitors, use polyester x class capacitor of 400V.\n'
                  '13. Separate circuit is shown for 5V power supply and 12V power supply to show the selection and calculation of series capacitor C1 and C6.\n'
                  '14. The fuse of 250mA (0.25A) must be added for short circuit safety.\n'
                  '15. NTC thermister (RT1 and RT2 of 10ohm) is used to avoid inrush current.\n'
                  '16. Varistor VR1 and VR2 of 230V is used for over voltage protection.\n'
                  '17. PCB file of this circuit is also give. If you want to do practical experiment then download PCB file and develop hardware.\n'
                  '18. Before making this circuit, you should see the previous circuits "Zener Diode as Dummy Load" and "Active Dummy load" in Analog Circuits category.\n'
                  'Application:\n'
                  '1. This circuit can be used to derive 12VDC fan from mains voltage.\n'
                  '2. This circuit can also be used to derive 12V LED buld or LED strip or a single LED up to 5W.\n'
                  '3. This circuit (with 7805, 5V regulator) can be used as mobile phone charger or transformerless power supply for 5V devices.\n'
                  'Precautions:\n'
                  '1. THIS CIRCUIT IS DANGEROUS, BECAUSE THERE ARE LIVE VOLTAGES AT THE CAPACITOR, SO BE EXTRA CAREFUL WHILE IMPLEMENTING THIS CIRCUIT.\n'
                  '2. USE SAFETY GLOVES BEFORE USING OR TURN ON THIS CIRCUIT.\n'
                  "3. DON'T MAKE AND RUN THIS CIRCUIT ALONE. THERE SHOULD BE SOMEONE NEAR TO OBSERVE YOU WHILE YOU ARE WORKING ON THIS CIRCUIT.\n"
                'Before practical you can download these files and perform simulation experiments for more understanding.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:134 KB)'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Pcb File",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
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
                  child: Text('DOWNLOAD(.LYT FILE SIZE:40.2 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:226.9 KB)'),
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

