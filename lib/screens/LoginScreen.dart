import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_bill/screens/SignUpScreen.dart';
import 'package:smart_bill/screens/HomeScreen.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String radioButtonItem = 'Four';
  int id = 0;
  void _submit() {
    final isValid = formkey.currentState!.validate();
    if (!isValid) {
      return ;
    }

    formkey.currentState?.save();
      Navigator.push(context, MaterialPageRoute(
               builder: (context)=>const HomeScreen()));
  }




   Widget _buildUserName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            'Username',
            style: shortheadstyle()
        ),
       const  SizedBox(height: 5.0),
        TextFormField(
          validator: (value) {
                if (value!.isEmpty) {
                    return "Username  can't be blank";
                   }
            return null;
         },
          keyboardType: TextInputType.emailAddress,
          style: shortheadstyle(),


          decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                    color: Colors.white38, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10.0)),
              ),

              contentPadding: EdgeInsets.only(left: 40, right: 10,top: 20, bottom: 0),
              errorStyle: TextStyle(fontSize: 12, height: 1.8),
            border: InputBorder.none,
           // contentPadding: EdgeInsets.only(top: 15.0),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white54,
            ),
            hintText: 'Enter your Username',
            hintStyle: TextStyle(color: Colors.white38)
          ),
        ),
      ],
    );
  }
   Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password', style: shortheadstyle()
        ),
        const SizedBox(height: 5.0),
        TextFormField(
          textAlign: TextAlign.justify,
          validator: (value) {
            if (value!.isEmpty) {
              return "Password  can't be blank";
            }
            return null;
          },
          obscureText: true,
          style: shortheadstyle(),
          decoration:const  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                    color: Colors.white38, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10.0)),
              ),
              // contentPadding: EdgeInsets.symmetric(
              //     vertical: 5, horizontal: 30),
              contentPadding: EdgeInsets.only(left: 40, right: 10,top: 20, bottom: 0),
              errorStyle: TextStyle(fontSize: 12, height: 1.8),


              border: InputBorder.none,
           // contentPadding: EdgeInsets.only(top: 20.0),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.white54,
            ),
            hintText: 'Enter your Password',
            hintStyle: TextStyle(color: Colors.white38)
          ),
        ),
      ],
    );
  }
   Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>const SignUpScreen()));

      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: shortheadstyle(),
            ),
            const TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
   Widget _buildLoginBttn(){
    return  GestureDetector(
      onTap: (){
        _submit();
        // Navigator.push(context, MaterialPageRoute(
        //     builder: (context)=>const HomeScreen()));
      },

      child: Container(
        height: 50,
        //width: 250,
        decoration: const BoxDecoration(
          color: Color(0xFFFDDA0D),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const  Center(
          child: Text("LOGIN",style: TextStyle(color: Colors.white,
              fontSize: 20,fontWeight: FontWeight.bold
          )),

        ),
      ),
    );
   }
   Widget _buildRadioButton(){
    return Row(
      children: [
        Theme(
          data: ThemeData(
            unselectedWidgetColor: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 2.0,top: 5),
            child: Radio(
              activeColor: Colors.yellow,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Admin';
                  id = 1;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0,top: 5),
          child: Text(
              'Admin',
              style: shortheadstyle()
          ),
        ),
        Theme(
        data: ThemeData(
           unselectedWidgetColor: Colors.white70,
         ),
         child: Padding(
         padding: const EdgeInsets.only(left: 30.0,top: 5),
           child: Radio(

          activeColor: Colors.yellow,
          value: 3,
          groupValue: id,
          onChanged: (val) {
          setState(() {
            radioButtonItem = 'User';
           id = 3;
            });
              },
            ),
          ),
         ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 5),

          child: Text(
            'User',
            style: shortheadstyle(),
          ),
        ),
      ],
    );
   }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration:const  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF3A3939),
                      Color(0xFF131010),
                      Color(0xFF171616),
                      Color(0xFF0C0B0B),
                    ],
                   //stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Form(
                key: formkey,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                   // physics: AlwaysScrollableScrollPhysics(),
                    padding:const  EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 30.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/smartbill.png",
                              height: 120,
                              width: 130,)],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/loginimage.png",
                              height: 220,
                              width: 220,),],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Color(0xFF1F1F1F), Color(0xFF468c90)
                          children: [
                            Image.asset("images/room.png",
                              height: 100,
                              width: 100,)
                          ],
                        ),
                       const  SizedBox(height: 50.0),
                        _buildUserName(),
                        const SizedBox(height: 10.0,),
                        _buildPasswordTF(),
                        const SizedBox(height: 10.0),
                        _buildRadioButton(),
                       const  SizedBox(height: 10.0),
                        _buildLoginBttn(),
                       const  SizedBox(height: 20,),
                        _buildSignupBtn(),
                        const SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
