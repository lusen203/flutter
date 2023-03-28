import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'lib/maths/freakingmath.dart' ;
void main() {
  runApp(freaking());
}
class freaking extends StatefulWidget {
  const freaking({super.key});
  

  @override
  State<freaking> createState() => _freakingState();
}

class _freakingState extends State<freaking> {
  int status = 0;

  //0: home, 1: play, 2: gameover, 3: more
  int score = 0;
  int best_core = 0;
  int time = 15;
  late Timer timer;
  late int p1, p2;
  late int  ans, correctAns;
  late String operator;
  List<String> listOperator = ["+", "-", "x", "/"];
  final rd=Random();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:status == 0?
      StartScreen(): status == 1?
      PlayScreen():
      GameOver(),
      ) ;
  }

  Container PlayScreen(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*time/15,
              height: 10,
              color: Color.fromARGB(255, 245, 177, 177),
            )
          ],
          ),
          SizedBox(
            height: 40,
          ),
          Text('$score',
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30),
          ),
          SizedBox(
            height: 80,
          ),
          Text('$p1 $operator $p2 = $ans',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),

          Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Expanded(child: 
              Container(
                width: MediaQuery.of(context).size.width/3,
                height:MediaQuery.of(context).size.height/6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                
                child: TextButton(
                  onPressed:(){
                    if(ans==correctAns){
                      score++;
                      creatExpression();
                      time=15;
                    }else{
                      status = 2;
                    }
                    setState(() {
                    });
                  } ,
                  child: Icon(Icons.check,
                  size: 35,
                  color: Colors.green,),
                ),
              ),
             ),
             
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: 
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        height:MediaQuery.of(context).size.height/6,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                            child: TextButton(
                                onPressed:(){
                                  if(ans!=correctAns){
                                    score+=1;
                                    creatExpression();
                                    time=15;
                                  }else{
                                    status = 2;
                                  }
                                  setState(() {
                                  });
                                } ,
                                child: Icon(Icons.clear,
                                size: 50,
                                color: Colors.red,),
                        ),
                  ),
                  ),
                 ],
              )
             ),
          ],
          )
      ],
      ),
    );
  }

Container StartScreen(){
  return Container(
       width: double.infinity,
       height: double.infinity,
       color: Color.fromARGB(255, 238, 34, 207),
       child: Column(
         
        children: [
          SizedBox(
            height: 100,
          ),
         Text("Freaking Math",
                style:TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40),
         ),
         SizedBox(
                height:200 ,
         ),
         TextButton(
              onPressed: (){
                status = 1;
                score=0;
                creatExpression();
                time=15;
                setState(() {
                });  
              },
              child: Text("Start",
              style: TextStyle(color: Colors.pink,
              fontWeight: FontWeight.bold,fontSize: 30),
              ),
       ),
       SizedBox(
        height: 120,
       ),
       Container(
          width: 150,
          height: 80,
          alignment: Alignment.center,
          child: Text("Play",
          style: TextStyle(color: Colors.pink,
          fontWeight: FontWeight.bold,fontSize: 30),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
       )
       ]
     ),  
      );
}

Container GameOver(){
  if(best_core<score){
    best_core=score;
  }
  return Container(
    color:Colors.green,
    width: double.infinity,
    height: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Game Over",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text("Your score: $score",
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      ),
      Text("Best score: $best_core",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(10),
              ),
              onPressed:(){
                status=1;
                score=0;
                time=15;
                setState(() {});
              }, child:Icon(Icons.cached_sharp),
              ),
               TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(10),
              ),
              onPressed:(){
                status=0;
                score=0;
                time=1;
                setState(() {});
              }, child:Icon(Icons.home),
              ),
        ]
        ),
      )
    


    ]
    ),

  );
}

creatExpression(){
  p1=Random().nextInt(10)+1;
  p2=Random().nextInt(10)+2;
  operator= listOperator[rd.nextInt(listOperator.length)];
  switch(operator){
    case '+':
      correctAns=p1 + p2;
      break;
    case '-':
      correctAns=p1 - p2;
      break;
    case '*':
      correctAns=p1 * p2;
      break;
    case '/':
      correctAns=p1 ~/ p2;
      break;
  }
  ans=correctAns + Random().nextInt(2)-1;
  }

}





