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

  
Container StartScreen(){
  return Container(
       width: double.infinity,
       height: double.infinity,
       color: Color.fromARGB(255, 238, 34, 207),
       child: Column(
         
        children: [
          SizedBox(
            height: 150,
          ),
         Text("Freaking Math",
                style:TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40),
         ),
         SizedBox(
                height:100 ,
         ),
         TextButton(
              onPressed: (){
                status = 1;
                score=0;
                _creatExpression();
                time=15;
                _timer();
                setState(() {
                });  
              },
              child: Text("Start",
              style: TextStyle(color: Colors.pink,
              fontWeight: FontWeight.bold,fontSize: 30),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(30),
                backgroundColor: Colors.white,
                
              ),
              
            
       ),
       SizedBox(
        height: 80,
       ),
       Container(
          width: 120,
          height: 90,
          alignment: Alignment.center,
          child: Text("Other",
          style: TextStyle(color: Colors.pink,
          fontWeight: FontWeight.bold,fontSize: 30),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
          ),
       )
       ]
     ),  
      );
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * time / 15,
                height: 15,
                color: Color.fromARGB(255, 253, 156, 11),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text('$score',
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40),
          ),
          SizedBox(
            height: 80,
          ),
          Text('$p1 $operator $p2 = $ans',
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
           SizedBox(
            height: 200,
          ),

          Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Expanded(child: 
              Container(
                width: MediaQuery.of(context).size.width/2,
                height:MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                
                child: TextButton(
                  onPressed:(){
                    if(ans==correctAns){
                      score++;
                      _creatExpression();
                      time=15;
                      _timer();
                    }else{
                      status = 2;
                    }
                    setState(() {
                    });
                  } ,
                  child: Icon(Icons.check,size: 100,
                  color: Colors.green,),
                ),
              ),
             ),
             SizedBox(
              width: 20,
             ),
             
             
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: 
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height:MediaQuery.of(context).size.height/3,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                            child: TextButton(
                                onPressed:(){
                                  if(ans!=correctAns){
                                    score+=1;
                                    _creatExpression();
                                    time=15;
                                    _timer();
                                  }else{
                                    status = 2;
                                  }
                                  setState(() {
                                  });
                                } ,
                                child: Icon(Icons.clear,
                                size: 100,
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


Container GameOver(){
  if(best_core<score){
    best_core=score;
  }
  return Container(
    color:Colors.purple,
    width: double.infinity,
    height: double.infinity,

    child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         
      children: [
        SizedBox(
          height: 100,
        ),
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
        height: 30,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              ),
              onPressed:(){
                status=1;
                score=0;
                time=15;
                setState(() {});
              }, child:Icon(Icons.cached_sharp),
              ),
              SizedBox(
                width: 10,
              ),
               TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
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
       ),
       SizedBox(
        height: 250,
       ),
       Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 180,
              height: 200,
              color: Colors.white,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.check),
                color: Colors.green,
                iconSize: 100,
              ),
            ),
            Container(
              width: 180,
              height: 200,
              color: Colors.white,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.clear),
                color: Colors.red,
                iconSize: 100,
                
              ),
            ),
        ]),
       )
     ]
    ),
  );
}

_creatExpression(){
  p1=Random().nextInt(20)+1;
  p2=Random().nextInt(20)+2;
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

  _timer() {
    // ignore: unnecessary_new
    timer = new Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        time -= 1;
        if (time <= 0) {
          timer.cancel();
          status = 2;
        }
        setState(() {});
      },
    );
  }


}





