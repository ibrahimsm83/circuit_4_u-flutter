import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:flutter/services.dart';

import 'dart:async';
import 'dart:ui';
import 'dart:typed_data';

class eighty1 extends StatefulWidget {
  @override
  _eighty1State createState() => _eighty1State();
}

class _eighty1State extends State<eighty1> {

//class eighty1 extends StatelessWidget {
  
  final _imageSaver = ImageSaver();
   bool _isLoading = false;
  bool _showResult = false;
  String _resultText = "";
  Color _resultColor = Colors.red;

  @override
  void initState() {
    super.initState();
  }
  //MyStatelessWidget({Key key}) : super(key: key);
   /// Saves one of asset images to gallery
  Future<void> saveAssetImage() async {
    _startLoading();
    final urls = ["assets/81.JPG"];
    List<Uint8List> bytesList = [];
    for (final url in urls) {
      final bytes = await rootBundle.load(url);
      bytesList.add(bytes.buffer.asUint8List());
    }
    final res = await _imageSaver.saveImages(imageBytes: bytesList);
   _stopLoading();
  _displayResult(res);
    print(res);
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.200,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(' Interfacing 20x4 LCD with AT89C51',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Analog Circuit",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.20,
                width: width*0.70,
                child: Image.asset('assets/81.JPG',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-03-27',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              padding: EdgeInsets.only(top:30.0,bottom: 10.0,left: 5.0),
              child:Row(//Description
                children: <Widget>[
                  Text('Description',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0),
              child:Text(
                 ''   ),
            ),

            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),

            Row(
              children: <Widget>[
                Text("Not Avaliable in Assets",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold)),
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
                 // onPressed: (){},
                 
                  onPressed: ()async{
                  final status= await Permission.storage.request();
                  if (status.isGranted){
                    final externalDir=await getExternalStorageDirectory();
                   await FlutterDownloader.enqueue(url: "https://drive.google.com/file/d/1da9piYCPvwNeYbqeMp8WyOzT47ca3qSE/view?usp=sharing", 
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:72.6 KB)'),
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
                  onPressed: ()async{
                  final status= await Permission.storage.request();
                  if (status.isGranted){
                    final externalDir=await getExternalStorageDirectory();
                   await FlutterDownloader.enqueue(url: "https://drive.google.com/file/d/1QeameWgWrAVVEy4Pl_GKibpncTczjBZO/view?usp=sharing", 
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
                  child: Text('DOWNLOAD(.HEX FILE SIZE:1.5 KB)'),
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
                onPressed: ()async{
                  final status= await Permission.storage.request();
                  if (status.isGranted){
                    final externalDir=await getExternalStorageDirectory();
                   await FlutterDownloader.enqueue(url: "https://drive.google.com/file/d/1SjzX2wIJZMbCHcEA6zLtF8TKiFwOAILS/view?usp=sharing", 
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
                  child: Text('DOWNLOAD(.RAR FILE SIZE:107.7 KB)'),
                ),
              ],
            ),
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
                  onPressed:()=>saveAssetImage(),
                 // child: Text("Save image from assets"),
                  /*onPressed: ()async{
                  final status= await Permission.storage.request();
                  if (status.isGranted){
                    final externalDir=await getExternalStorageDirectory();
                   await FlutterDownloader.enqueue(url: "https://drive.google.com/file/d/1VzlcGpHuVgeq4uxYnJnw8PxHzpE8Gx_B/view?usp=sharing", 
                    savedDir: externalDir.path,
                    fileName: "downloade",
                    showNotification: true,
                    openFileFromNotification: true,
                    );
                  }else{
                    print("Permission Denied");
                  }
             }, */
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.JPG File 12.0 KB)'),
                ),
              ],
            ),
  //_progressIndictaor,
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
   Widget get _progressIndictaor {
    return _isLoading
        ? Container(
            child: Center(child: CircularProgressIndicator()),
            color: Color.fromRGBO(0, 0, 0, 0.3),
          )
        : Container();
  }

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  void _stopLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  void _displayResult(bool success) {
    _showResult = true;
    if (success) {
      _displaySuccessMessage();
    } else {
      _displayErrorMessage();
    }
    Timer(Duration(seconds: 2), () {
      _hideResult();
    });
  }

  void _displaySuccessMessage() {
    setState(() {
      _resultText = "Images saved successfullty";
      _resultColor = Colors.green;
    });
  }

  void _displayErrorMessage() {
    setState(() {
      _resultText = "An error occurred while saving images";
      _resultColor = Colors.red;
    });
  }

  void _hideResult() {
    setState(() {
      _showResult = false;
    });
  }
}

