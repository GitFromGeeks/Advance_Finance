import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// ignore: camel_case_types
class Add_customer extends StatefulWidget {
  @override
  _Add_customerState createState() => _Add_customerState();
}

// ignore: camel_case_types
class _Add_customerState extends State<Add_customer> {
  // ignore: non_constant_identifier_names
  _submit_Popup(context) {
    Alert(
        context: context,
        title: "Added",
        content: Text(
          "Successfully!",
          style: TextStyle(fontSize: 10.0),
        ),
        buttons: [
          DialogButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.of(context).pushNamed("/home");
              })
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  Image(
                      width: MediaQuery.of(context).size.width * 0.35,
                      image: AssetImage("af.png")),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle_rounded),
                        labelText: "Name"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone), labelText: "Mobile Number"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        icon: Icon(Icons.email), labelText: "email"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        icon: Icon(Icons.local_activity_sharp),
                        labelText: "Address"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.confirmation_number),
                        labelText: "Addhar No."),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.input_rounded), labelText: "Loan ID"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.input_rounded), labelText: "PAN No."),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone_android), labelText: "Model"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.price_change), labelText: "Price"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.input_rounded),
                        labelText: "Branch Code"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.input_rounded), labelText: "IMEI"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.input_rounded),
                        labelText: "File Charge"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.timelapse), labelText: "Duration"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.description), labelText: "Ref. Name"),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.description), labelText: "Ref. No."),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.grey),
                          onPressed: () {},
                          child: Text("Customer Photo"))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.grey),
                          onPressed: () {},
                          child: Text("Addhar Front"))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.grey),
                          onPressed: () {},
                          child: Text("Addhar Back"))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.grey),
                          onPressed: () {},
                          child: Text("PAN card"))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _submit_Popup(context);
                          },
                          child: Text("Submit"))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
