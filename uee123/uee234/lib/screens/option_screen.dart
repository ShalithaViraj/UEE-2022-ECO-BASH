import 'package:uee234/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:uee234/screens/signin.dart';
import 'package:uee234/screens/register.dart';




class OptionScreen extends StatelessWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Eco_Bash' , style: TextStyle(fontSize: 30),),
            const SizedBox(height: 20,),
            RoundButton(title: 'Login', onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
            
            },),
            const SizedBox(height: 20,),
            RoundButton(title: 'Register', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
            },),
          ],

        ),
      ),
    );
  }
}



