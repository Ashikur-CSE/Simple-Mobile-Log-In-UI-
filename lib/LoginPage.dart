import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool secure = true;
  String text = "";
  var currentFocus;
  unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: unfocus,
      child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

        ),
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 20,left: 20,top: 40),
        children: [

          const Center(child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'font'),),),
          const SizedBox(height: 40,),

          TextField(
            style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "font"),
            decoration: InputDecoration(
              hintText: "Type Your Username",
              hintStyle: TextStyle(color: Colors.black26, fontSize: 13, fontFamily: "font"),
              labelText: 'Username ',
              labelStyle: TextStyle(color: Colors.black, fontSize: 13),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 0.5, color: Colors.black26),
                borderRadius: BorderRadius.circular(13),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(13)
              ),
              prefixIcon:Icon(Icons.account_circle_rounded ,color: Colors.black),

            ),

          ),
          SizedBox(height: 30,),

          SizedBox(
            height: 75,
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "font"),
              decoration: InputDecoration(
                hintText: "Type Your Password",
                hintStyle: TextStyle(color: Colors.black26, fontSize: 11, fontFamily: "font"),
                labelText: 'Password ',
                labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Colors.black26),
                  borderRadius: BorderRadius.circular(13),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(13)
                ),
                prefixIcon: Icon(Icons.lock,color: Colors.black,),
                suffixIcon: IconButton(
                  icon:  Icon(secure ? Icons.remove_red_eye:Icons.visibility_off_outlined,color: Colors.black,),
                  onPressed: () {
                    setState(() {
                      secure = !secure;
                    });
                  },
                ),
              ),
              obscureText: secure,
              obscuringCharacter: '*',
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Text("Forget Password",textAlign: TextAlign.end,style: TextStyle(color: Colors.black38,fontFamily: "font"),),
          ),
          SizedBox(height: 20,),
          MaterialButton(
            height: 45,
            onPressed: (){
            },
            color: Colors.black,
            child: Text("LOGIN", style: TextStyle(color: Colors.white,fontFamily: "font"),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                side: BorderSide(width: 1, color: Colors.black87),
            ),
          ),
          SizedBox(height: 25,),
          Text("Or Login With",textAlign: TextAlign.center,style: TextStyle(color: Colors.black38,fontFamily: "font"),),
          SizedBox(height: 25,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Container(
                      child:Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("A",style: TextStyle(color: Colors.white,fontFamily: "font"),textAlign: TextAlign.center,),

                      ),
                      height: 40,
                      width: 40,
                      //color: Colors.pinkAccent,
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                        boxShadow:[BoxShadow(color:Colors.black26,blurRadius:10,offset:Offset(3.3,3.3,),spreadRadius: 5,),],
                    ),
                      ),
                    SizedBox(width: 20,),
                    Container(
                      child:Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("B",style: TextStyle(color: Colors.white,fontFamily: "font"),textAlign: TextAlign.center,),
                      ),
                      height: 40,
                      width: 40,
                      //color: Colors.pinkAccent,
                      decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        color: Colors.black,
                        boxShadow:[  BoxShadow(color:Colors.black26,blurRadius:10,offset:Offset(3.3,3.3,),spreadRadius: 5,),],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      child:Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("C",style: TextStyle(color: Colors.white,fontFamily: "font"),textAlign: TextAlign.center,),
                      ),
                      height: 40,
                      width: 40,
                      //color: Colors.pinkAccent,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        boxShadow:[  BoxShadow(color:Colors.black26,blurRadius:10,offset:Offset(3.3,3.3,),spreadRadius: 5,),],
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(width: 80,height: 60),
              Text("Or Sign Up With",textAlign: TextAlign.center,style: TextStyle(color: Colors.black38,fontFamily: "font"),),
              SizedBox(width: 80,height: 15),
              Text(" Sign Up ",textAlign: TextAlign.center,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "font"),),
              SizedBox(height: 30),
            ],
          )


        ],
      ),
      ),
    );


  }
}

