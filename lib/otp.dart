import 'package:flutter/material.dart';


//LEARN ABOUT SNACKBAR!!!!!!!!!!!!!!!!!

class Otp_Page extends StatefulWidget {
  const Otp_Page({Key? key}) : super(key: key);

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {

  final _scaffoldkey = GlobalKey<ScaffoldMessengerState>();
  TextEditingController contra = TextEditingController();


  @override
  Widget build(BuildContext context) {
    //Declare Variables
    var screenSize = MediaQuery.of(context).size;
    String x = contra.text;

    return Scaffold(
      appBar: AppBar(
        title: Text('OTP PAGE'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: screenSize.width,
            color: Colors.grey,
            child: Center(
            child: Text("OTP VARIFICATION is $x", style: TextStyle(color: Colors.black, height: 7, fontWeight: FontWeight.bold, fontSize: 25,),),
            ),
          ),

          TextField(controller: contra,decoration: InputDecoration(hintText: ('Enter OTP here,')),),

          Center(

          child: Text('Thank you for registering with us, Please type the OPT', style: TextStyle(height: 5),),
          ),

          Center(
            child: ElevatedButton(onPressed:
            () {
              setState(() {});
              if (contra.text.isNotEmpty) {

                String x = contra.text;

            }else{
                final snackBar = SnackBar(
                  content: const Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              };
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color
              ),
                child: Text('Submit button'),
          ),
          ),
        ],
      ),
    );
  }
}
