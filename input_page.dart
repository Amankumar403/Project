import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseble_card.dart';
import 'const.dart';
import 'ResultPage.dart';
import 'calculater_brain.dart';


enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  var heigth = 180 ;
  var weight = 60 ;
  var age = 40;


  Color maleCardColor = inactivecardColor;
  Color femaleCardColor = inactivecardColor;

  void updateColor(Gender selectedgender){
    //maleCard on pressed
    if(selectedgender == Gender.male){
      if(maleCardColor == inactivecardColor){
        maleCardColor = activecardColor;
        femaleCardColor = inactivecardColor;
      } else {
        maleCardColor = inactivecardColor;
      }
    }
    //femaleCard on pressed
    if(selectedgender == Gender.female){
      if(femaleCardColor == inactivecardColor){
        femaleCardColor = activecardColor;
        maleCardColor = inactivecardColor;
      } else {
        femaleCardColor = inactivecardColor;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMICALCULATER',style: TextStyle(color: Colors.red),),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                updateColor(Gender.male);
              });
            },
            child: Expanded(child: Row(
              children: [
                Expanded(child: ReusebleCard(maleCardColor,
                Column(
                  children: [
                    SizedBox(height: 25,),
                    Icon(FontAwesomeIcons.mars,size: 70,),
                    SizedBox(height: 15,),
                    Text('MALE',style: TextStyle(fontSize: 25,color: Colors.white),)
                  ],
                )
                ),
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusebleCard(femaleCardColor,
                      Column(
                        children: [
                          SizedBox(height: 30,),
                          Icon(FontAwesomeIcons.venus,size: 70,),
                          SizedBox(height: 15,),
                          Text('FEMALE',style: TextStyle(fontSize: 25,color: Colors.white),)
                        ],
                      )
                ),
                    )
                )
              ],
            )),
          ),



          Expanded(child: reuseblecard(Activecardcolor,
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT', style: TextStyle(fontSize: 20,color: Colors.white),),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(heigth.toString(),style: TextStyle(fontSize: 50.96,color: Colors.white),),

              Text('CM',style: TextStyle(fontSize: 20,color: Colors.white),)
              ],),
              Slider(value: heigth.toDouble(),min: 120.0,max: 220.0,activeColor: Colors.red,inactiveColor: Colors.white,
                  onChanged: (double newVelue){ setState(() {
                    heigth = newVelue.round();
                  });}
              )
            ],
          )
          )),



          Expanded(child: Row(
            children: [
              Expanded(child: ReusebleCard(activecardColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text(weight.toString(),style: TextStyle(fontSize: 50.90,color: Colors.white ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressed: (){setState(() {
                            weight--;
                          });},),
                        SizedBox(width: 15,),
                        RoundIconButton(icon:FontAwesomeIcons.add,
                          onPressed: (){setState(() {
                            weight++;
                          });},)
                      ],
                    )
                  ],
                )
              )
              ),
              Expanded(child: ReusebleCard(activecardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text(age.toString(),style: TextStyle(fontSize: 50,color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPressed: (){setState(() {
                                age--;
                              });}),
                          SizedBox(width: 15,),
                          RoundIconButton(icon: FontAwesomeIcons.add,
                              onPressed: (){setState(() {
                                age++;
                              });})
                        ],
                      )
                    ],
                  )
              )
              )
            ],
          )),
          Container(
            child: GestureDetector(
              onTap: (){

                CalculaterBrain calca = CalculaterBrain(heigth, weight);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                  bmiResult: calca.CalculaterBmi(),
                  resultText: calca.getResult() ,
                  interpretation: calca.getnIterpretation(),
                )));
              },
                child: Text('   CALCULATE',style: TextStyle(fontSize: 48,color: Colors.white),)),
            margin: EdgeInsets.only(top: 2.0,bottom: 10.0),
            height: 75,width: 350,
            decoration: BoxDecoration(
                color: bottomcardColor,
              borderRadius: BorderRadius.circular(7.0)
            ),
          )
        ],
      )
    );
  }
}


