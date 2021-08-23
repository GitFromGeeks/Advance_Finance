import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                      width: MediaQuery.of(context).size.width * 0.45,
                      image: AssetImage("af.png")),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: Row(
                        children: [
                          Text(
                            "LOGOUT",
                            style: GoogleFonts.abel(),
                          ),
                          Icon(Icons.logout)
                        ],
                      )),
                ],
              ),
              Divider(thickness: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Customers",
                    style: GoogleFonts.abel(
                        textStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.08)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/add_customer");
                      },
                      child: Row(
                        children: [
                          Text(
                            "Add",
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          )
                        ],
                      ))
                ],
              ),
              Divider(thickness: 2.0),
              Card(
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "     Search by Name/Date"),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("Filter"),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ))
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.black,
                child: ListView.builder(
                  padding: EdgeInsets.all(5.0),
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/customer_details");
                      },
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("16/8/21"),
                                trailing: Text("Customer Name"),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
