import 'package:bmi_new/reuseble_card.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult ,this.resultText , this.interpretation});

   var bmiResult ;
   var resultText ;
   var interpretation ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bmi calculater',style: TextStyle(color: Colors.red),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text('    your Result',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500,),),
              ),
            ),
            Expanded(
              flex: 10,
              child: reuseblecard(Color(0xFF1D1E45),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: TextStyle(fontSize: 30,color: Colors.green),),
                  Text(bmiResult,style: TextStyle(fontSize: 90,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(interpretation,style: TextStyle(fontSize: 30,color: Colors.yellow),)
                ],
              )
              ),
            ),
            Container(
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('   RE-CALCULATE',style: TextStyle(fontSize: 40,color: Colors.white),)),
              margin: EdgeInsets.only(top: 2.0,bottom: 10.0),
              height: 70,width: 330,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(7.0)
              ),
            )
          ],
        ),
      ),
    );
  }
}
