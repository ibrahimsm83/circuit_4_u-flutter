import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


class a6 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.530,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Half Wave Rectifier',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/a6.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-07-30',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. In this circuit a half wave rectifier is simulated and working of this circuit is given below.\n'
                  '1. A diode (1N4007) is used to make half wave rectifier.\n'
                  '2. In this circuit you will learn that how a half wave rectifier is made using a diode and how it works.\n'
                  '3. A sine wave signal of 6V is applied, which is shown in yellow color.\n'
                  '4. A diode is added in series of sinosoidal voltage and a resistor of 1K ohm is placed to complete the closed path of circuit.\n'
                  '5. The output is taken across the output, which is shown in blue color.\n'
                  '6. A sinosoidal wave has two cycles, positive cycle and negative cycle.\n'
                  '7. When positive cycle comes, which means positive voltage at the anode point of diode, and when positive voltage goes above 0.7V diode becomes forward bias.\n'
                  '8. When diode is forward bias, it is in conduction mode and signal passes through diode. The voltage drop across the diode is 0.7V.\n'
                  '9. The amplitude of blue wave is 0.7V less than yellow wave because 0.7V is droped accoss diode.\n'
                  '10. When negative cycle comes, which means negative voltage at the anode point of diode, therefore the diode is reverse bias and current cannot flow throgh diode.\n'
                  '11. The output of this negative cycle is zero, which is shown in straight line of blue wave.\n'
                  '12. This is called half wave rectifier.\n'
                  'Applications:\n'
                  '1. This circuit can be used to understand half wave rectifier.\n'
                  '2. This circuit can be used to make low power dc voltage power supply from ac voltage.\n'
                  '3. This circuit can be used to measure peak of ac voltage, and also called peak detector.\n'
                  'Note:\n'
                  'New circuits are added on daily, weekly and monthly basis. Come back daily to get new amazing circuits.\n',style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:71.3 KB)'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:124.2 KB)'),
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

