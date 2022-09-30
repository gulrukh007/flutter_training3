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


import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner : false,
        home: Calculater(),
      ));
}


class Calculater extends StatefulWidget {
  const Calculater({Key? key}) : super(key: key);

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {

  String btntxt1 = "";

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculater'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Wrap(
        children: [
          Column(
            children: [
              //The result typed ------------------------------------------------------------------------------------
              Row(
                children: [

                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    height: 100,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        border: Border.all(color: Colors.cyan, width: 3),
                        borderRadius: BorderRadius.circular(18)
                    ),

                    child: Center(
                      child: Text("$text", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                    ),),

                  //AC ------------------------------------------------------------------------------------

                  InkWell(
                    splashColor  : Colors.deepOrange,
                    onTap: (){
                      setState(() {
                        btntxt1 = "AC";
                        calculation(btntxt1);
                        // Colors.orangeAccent;
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        color: btntxt1 == "AC" ? Colors.deepOrangeAccent:Colors.transparent,
                          border: Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("AC", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                ],
              ),


              SizedBox(height: 30),
              Row(
                children: [
                  //container 1........................................................................
                  InkWell(
                    splashColor  : Colors.deepOrange,
                    onTap: (){
                      setState(() {
                        btntxt1 = "1";
                        calculation(btntxt1);
                        // Colors.orangeAccent;
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          // color: btntxt1 == "1" ? Colors.tealAccent:Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("1", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                  //container 2...............................................................................

                    InkWell(
                      splashColor: Colors.blueAccent,
                      onTap: (){
                        setState(() {
                          btntxt1 = "2";
                          calculation(btntxt1);
                        });
                      },
                      child:
                      Container(
                        width: 100,
                        height: 100,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.yellow, width: 3),
                            borderRadius: BorderRadius.circular(18)
                        ),

                        child: Center(
                          child: Text("2", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                        ),),),

                  //container 3............................................................................

                  InkWell(
                    splashColor: Colors.lightGreenAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "3";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("3", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container +...............................................................
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "+";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("+", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                ],
              ),
              //end row 1 -----------------------------------------------------------------------------------------------------------
              SizedBox(height: 5),
              Row(
                children: [
                  //container 4.................................................................................................
                  InkWell(
                    splashColor : Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "4";
                        calculation(btntxt1);
                        // Colors.orangeAccent;
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        // color: btntxt1 == "1" ? Colors.tealAccent:Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("4", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                  //container 5.................................................................................................

                  InkWell(
                    splashColor: Colors.purple,
                    onTap: (){
                      setState(() {
                        btntxt1 = "5";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("5", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container 6.....................................................................................................

                  InkWell(
                    splashColor: Colors.pink,
                    onTap: (){
                      setState(() {
                        btntxt1 = "6";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("6", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container -................................................................................................
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "-";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("-", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                ],
              ),
              //end row 2 -----------------------------------------------------------------------------------------------------
              SizedBox(height: 5),
              Row(
                children: [
                  //container 7........................................................................
                  InkWell(
                    splashColor  : Colors.indigo,
                    onTap: (){
                      setState(() {
                        btntxt1 = "7";
                        calculation(btntxt1);
                        // Colors.orangeAccent;
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        // color: btntxt1 == "1" ? Colors.tealAccent:Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("7", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                  //container 8...............................................................................

                  InkWell(
                    splashColor: Colors.redAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "8";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("8", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container 9............................................................................

                  InkWell(
                    splashColor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "9";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("9", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container *...............................................................
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "x";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("X", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                ],
              ),
              //end row 3 -----------------------------------------------------------------------------------------------------------
              SizedBox(height: 5),
              Row(
                children: [
                  //container =.................................................................................................
                  InkWell(
                    splashColor : Colors.purpleAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "=";
                        calculation(btntxt1);
                        // Colors.orangeAccent;
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("=", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                  //container (.).................................................................................................

                  InkWell(
                    splashColor: Colors.blueAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "0";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("0", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container %.....................................................................................................

                  InkWell(
                    splashColor: Colors.lightGreenAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = ".";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.yellow, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text(".", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),

                  //container /................................................................................................
                  InkWell(
                    splashColor: Colors.purpleAccent,
                    onTap: (){
                      setState(() {
                        btntxt1 = "/";
                        calculation(btntxt1);
                      });
                    },
                    child:
                    Container(
                      width: 100,
                      height: 100,
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.circular(18)
                      ),

                      child: Center(
                        child: Text("/", style: TextStyle(color: Colors.cyan, fontSize: 35,),),
                      ),),),
                ],
              ),
              //end row 4 -----------



            ],
          ),
        ],
      )
    );
  }


  //Calculator logic
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result1 = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result1 = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result1);
      } else {
        numTwo = double.parse(result1);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result1 = '';
    }
    else if(btnText == '%') {
      result1 = numOne / 100;
      finalResult = doesContainDecimal(result1);
    } else if(btnText == '.') {
      if(!result1.toString().contains('.')) {
        result1 = result1.toString()+'.';
      }
      finalResult = result1;
    }

    else if(btnText == '+/-') {
      result1.toString().startsWith('-') ? result1 = result1.toString().substring(1): result1 = '-'+result1.toString();
      finalResult = result1;

    }

    else {
      result1 = result1 + btnText;
      finalResult = result1;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {

    result1 = (numOne + numTwo).toString();
    numOne = double.parse(result1);
    return doesContainDecimal(result1);
  }

  String sub() {
    result1 = (numOne - numTwo).toString();
    numOne = double.parse(result1);
    return doesContainDecimal(result1);
  }
  String mul() {
    result1 = (numOne * numTwo).toString();
    numOne = double.parse(result1);
    return doesContainDecimal(result1);
  }
  String div() {
    result1 = (numOne / numTwo).toString();
    numOne = double.parse(result1);
    return doesContainDecimal(result1);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }



}
