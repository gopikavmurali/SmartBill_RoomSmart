import 'package:flutter/material.dart';
import 'package:smart_bill/models/list_model.dart';

import '../components.dart';
import '../constants.dart';

class AddDesignations extends StatefulWidget {
  const AddDesignations({Key? key}) : super(key: key);

  @override
  _AddDesignationsState createState() => _AddDesignationsState();
}

class _AddDesignationsState extends State<AddDesignations> {
  final Contact _contact=  Contact(id: "", name: '', mobile: '');

  List<Contact> _contacts = [];
  TextEditingController fullnameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _onSubmit() async {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      print('''
    Full Name : ${_contact.name}
    Mobile : ${_contact.mobile}
    ''');
      _contacts.add(Contact(id:"",name:_contact.name,mobile:_contact.mobile));
      form.reset();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff2d2d2d),
      appBar: AppBar(
        shadowColor: const  Color(0xff313131),
        elevation: 01,
        backgroundColor:const  Color(0xff363636),
        title: Text("Add Designation",style:MainHeadingStyle()),
      ),
      body:
         Column(
           //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color:const  Color(0xff2d2d2d),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text("Designation Name",style: shortheadstyle(),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      style: const TextStyle(color: Colors.black),
                      decoration:  InputDecoration(
                        hintText: "Name of Designation",
                        contentPadding: const  EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintStyle: labelStyle(),
                        filled: true,
                        fillColor: const Color(0xFFFAFAFA),
                        enabledBorder:const  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFFe0f4f5), width: 2),),
                        focusedBorder:const  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                          borderRadius: BorderRadius.all(Radius.circular(10.0,),),
                        ),
                      ),

                      cursorColor: Colors.black,
                      controller: fullnameController,
                      //decoration: InputDecoration(labelText: 'Name of Designation'),
                      validator: (val) =>
                      (val!.length == 0 ? 'This field is mandatory' : null),
                      onSaved: (val) => setState(() => _contact.name = val!),
                    ),
                    // TextFormField(
                    //   controller: mobileController,
                    //   decoration: InputDecoration(labelText: 'Mobile'),
                    //   validator: (val) =>
                    //   val!.length < 10 ? '10 characters required' : null,
                    //   onSaved: (val) => setState(() => _contact.mobile = val!),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,bottom: 30),
                      child: GestureDetector(
                        onTap: (){
                          _onSubmit();
                        },
                        child: ContainerButton(
                          height: 30,
                          width: 150,
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: const  Color(0xff2d2d2d),
                margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Scrollbar(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                           trailing: const Icon(Icons.delete,color: Colors.white38,),
                            leading: const Icon(
                              Icons.work_outline,
                              color: Colors.white38,
                              size: 20.0,
                            ),
                            title: Text(
                              _contacts[index].name.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.white70, fontWeight: FontWeight.bold),
                            ),

                            //subtitle: Text(_contacts[index].mobile,style: shortheadstyle(),),
                            onTap: () {},
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                        ],
                      );
                    },
                    itemCount: _contacts.length,
                  ),
                ),
              ),
            ),



          ],
        ),

    );
  }

}
