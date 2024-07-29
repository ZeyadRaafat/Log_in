import 'package:flutter/material.dart';
import 'package:hhh/Widgets/textfieldwid.dart';
import 'package:hhh/navpage.dart';

class StartPage extends StatefulWidget {

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _username =TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyan,
      ),
      body:  Form(
        key: formstate,
        child: Column(
          children: [
           const SizedBox(height: 40,),
            const Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('im not in danger',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('i\'m the danger',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 40,),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/hh.jpg"),
              radius: 50,
            ),
            const SizedBox(height: 60,),
             FromConteinerWidget(
              controller: _username,
              validator: (value){
                if(value=="" || value==null){
                  return "Name is required";
                }
                return null;
              },
              hintText: 'Name',
              isPasswordField: false,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if(formstate.currentState!.validate()){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> getName(name: _username.text,)));
                    }
                  },
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Border radius
                  ),
                  child: const Text('Enter'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
