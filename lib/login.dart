
import 'package:flutter/material.dart';

class login extends StatefulWidget
{
  const login({Key? key}) : super(key: key);
  @override
  _login createState() => _login();
}

class _login extends State<login>
{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 130, left: 35),
              child: const Text('Welcome\n Back', style: TextStyle(fontSize: 34, color: Colors.white),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5, right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sign in', style: TextStyle(fontSize: 27, color: Colors.black,fontWeight: FontWeight.w700),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward),color: Colors.white,),
                        )
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: const Text("Sing Up",style: TextStyle(decoration: TextDecoration.underline, fontSize: 18,color: Color(0xff4c505b)),)),
                        TextButton(onPressed: (){}, child: const Text("Forgot Password!",style: TextStyle(decoration: TextDecoration.underline, fontSize: 18,color: Color(0xff4c505b)),)),
                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}