import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  Calculater obj = Calculater();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'), backgroundColor: Colors.deepOrange,),
      body: Column(
        children: [
          //comments
          //beacause lorem.......
          TextField(controller:controller1 ,decoration: InputDecoration(hintText: "Number1"),),

          TextField(controller: controller2, decoration: InputDecoration(hintText: "Number2"),),

          ElevatedButton(onPressed: add,
              child: Text('ADD')),

    //       ElevatedButton(onPressed: () {
    //
    // int a = sub();
    //
    // },
    // child: Text('SUB')),
    //
    // ElevatedButton(onPressed: () {
    // final number1 = int.parse(controller1.text);
    // final number2 = int.parse(controller2.text);
    // mul(number1, number2);},
    // child: Text('multiply')),

        ],


      ),
    );
  }

  void add() {
    final number1 = int.parse(controller1.text);
    final number2 = int.parse(controller2.text);
    obj.add1(number1, number2);
    print(obj);
  }


}

class Calculater {

  //variables\
  //value change

  //constants
  //give not change

  int a;

  //given default value to parameter in constructor using {}
  Calculater({this.a = 2}) {
    print("in calculator constructor $a");
  }

  void add1(int a, int b){

    print(a + b);
  }

  // int sub(){
  //   final number1 = int.parse(controller1.text);
  //   final number2 = int.parse(controller2.text);
  //   return (number1 + number2);
  //
  // }

  void mul(int a, int b, {int c = 10}){
    print(a + b);
  }

  double calPer() {
    a = 20;

    //variable
    int a1 = 10;
    a1 = 20;
    //constant
    final int b = 10;
    //b = 20;
    return 0.0;
  }



}