
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'components/my_buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text('Calculator App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
          
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(

                        child: Text(userInput.toString(), style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,

                        ),),
                      ),

                      const SizedBox(height: 20,),

                      Text(answer.toString(), style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),)
                    ],
                
                  ),
                ),
              ),
          
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButtons(title: 'AC', onPress: (){
                          userInput = '';
                          answer ='';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '+/-', onPress: (){
                          userInput += '+/-';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '%', onPress: (){
                          userInput += '%';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '/', onPress: (){
                          userInput += '/';
                          setState(() {

                          });
                        },
                          color: const Color(0xffffa00a),),
                
                      ],
                    ),
                    Row(
                      children: [

                        MyButtons(title: '7', onPress: (){
                          userInput += '7';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '8', onPress: (){
                          userInput += '8';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '9', onPress: (){
                          userInput += '9';
                          setState(() {

                          });
                        },),
                        MyButtons(title: 'x', onPress: (){
                          userInput += 'x';
                          setState(() {

                          });
                        },
                          color: const Color(0xffffa00a),),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(title: '4', onPress: (){
                          userInput += '4';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '5', onPress: (){
                          userInput += '5';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '6', onPress: (){
                          userInput += '6';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '-', onPress: (){
                          userInput += '-';
                          setState(() {

                          });
                        },
                          color: const Color(0xffffa00a),),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(title: '1', onPress: (){
                          userInput += '1';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '2', onPress: (){
                          userInput += '2';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '3', onPress: (){
                          userInput += '3';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '+', onPress: (){
                          userInput += '+';
                          setState(() {

                          });
                        },
                          color: const Color(0xffffa00a),),
                
                      ],
                    ),
                    Row(
                      children: [
                        MyButtons(title: '0', onPress: (){
                          userInput += '0';
                          setState(() {

                          });
                        },),
                        MyButtons(title: '.', onPress: (){
                          userInput += '.';
                          setState(() {

                          });
                        },),
                        MyButtons(title: 'DEl', onPress: (){
                          userInput = userInput.substring(0 , userInput.length - 1);
                          setState(() {

                          });
                        },),
                        MyButtons(title: '=', onPress: (){
                          equalPress();
                         setState(() {

                         });
                        },
                          color: const Color(0xffffa00a),),
                
                      ],
                    ),
                
                  ],
                ),
              )


          
            ],
          ),
        ),
      ),
    );
  }


  void equalPress (){
    String finalUserInput= userInput;
    finalUserInput =userInput.replaceAll('x', '*');
    Parser p= Parser();

    Expression expression = p.parse(finalUserInput);

    ContextModel contextModel= ContextModel();

    double eval =expression.evaluate(EvaluationType.REAL, contextModel);

    answer = eval.toString();


  }


}






