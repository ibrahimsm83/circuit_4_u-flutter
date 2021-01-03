import 'package:flutter/material.dart';



class pic1 extends StatelessWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.950,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('PIC12F675 Timer0 Interupt ADC & LCD',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("PIC12F675",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/pic1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-06-01',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("The circuit is simulated in Proteus 7.10. While code is written in MpLab X IDE using XC8 compiler. The microcontroller used in this project is PIC12F675. In this project, you will learn how to interface alphanumeric LCD with PIC12F675. The working of this project is given below.\n"
                  '1. To understand the working of this circuit first see the previous project "PWM Generator With Duty Cycle Control" in PIC12F675.\n'
              "2. The LCD can be interfaced with microcontroller in 8bit mode or 4bit mode.\n"
              "3. To interface LCD in 8bit mode, at least 10 ouput pins of microcontroller are required.\n"
              "4. To interfance the LCD in 4bit mode, at least 10 ouput pins of microcontroller are required.\n"
              "5. The PIC12F675 has only 6 input output pins, but only 5 pins can be made output, the GP3/MCLR pin can only be made digital input.\n"
                "6. Therefore we use serial to parallel shift register IC CD4094 is used to interface the LCD in 4bit mode.\n"
                "7. Now only 3 pins of microcontroller are used to interface the LCD (clock and data of IC 4094 and Enable (E) pin of LCD).\n"
                "8. The RS and upper 4 data pins of LCD are connected with shift register IC 4094.\n"
                "9. The GP0 is made as analog input for taking duty cycle input from variable resistor.\n"
                "10. The GP1 and GP2 pins are output and connected to data  clock pin of IC 4094 respectively.\n"
                "11. The GP3/MCLR pin is not used.\n"
                "12. The GP4 pin output and is connected with Enable pin of LCD.\n"
                "13. The GP5 pin is also output and used as bit bang PWM output, it is also connected with LED D1.\n"
                "14. The code is given with comments. To view the code, click on view program files and click on the file which you want to read or view.\n"
                "Applications:\n"
                "1. This circuit can be used as PWM generator.\n"
                "2. You can convert this manual control of PWM to Auto control of PWM as a feedback.\n"
                "3. Variable resistors (potentiometers) can be replaced with Op-Amps for feedback to control the duty cycle and time period.\n"
                "4. It can be used in many ways, it depends on the application and how you use this circuit.\n"
                "You can view the program files in application to get the idea or you can download all the files to make further changes in it.\n"
                "All files are free!\n"
                "New circuits are added on daily basis. Come back daily to get new exciting and amazing circuits.\n",style: TextStyle(color: Colors.grey[600]),),
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:84.4 KB)'),
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
                  onPressed: (){},
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.HEX FILE SIZE:17 KB)'),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Text("Program Files",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
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
                  child: Text('VIEW'),
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
                  child: Text('DOWNLOAD(.ZIP FILE SIZE:4.5 KB)'),
                ),
              ],
            ),

            //Source File code
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

