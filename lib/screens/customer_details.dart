import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// ignore: camel_case_types
class Customer_details extends StatefulWidget {
  @override
  _Customer_detailsState createState() => _Customer_detailsState();
}

// ignore: camel_case_types
class _Customer_detailsState extends State<Customer_details> {
  // ignore: non_constant_identifier_names
  _EMI_PopUp(context) {
    Alert(
        context: context,
        title: "EMI pay",
        content: TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.description), labelText: "Description"),
        ),
        buttons: [
          DialogButton(
              child: Text("Confirm"),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]).show();
  }

  // ignore: non_constant_identifier_names
  _deleted_confirm(context) {
    Alert(
        context: context,
        title: "Delete",
        content: Text("Are you sure?"),
        buttons: [
          DialogButton(
              color: Colors.grey,
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          DialogButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  width: MediaQuery.of(context).size.width * 0.35,
                  image: AssetImage("af.png")),
              Row(
                children: [
                  Image(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      image: AssetImage("profile.jpg")),
                  Expanded(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                "Name : ",
                                style: GoogleFonts.abel(),
                              ),
                              Text(
                                "Mohd Monis",
                                style: GoogleFonts.abel(),
                              ),
                              SizedBox(
                                width: 120.0,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "UUID : ",
                              style: GoogleFonts.abel(),
                            ),
                            Text(
                              "4845 0123 7894",
                              style: GoogleFonts.abel(),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Loan ID : ",
                              style: GoogleFonts.abel(),
                            ),
                            Text(
                              "15412489567213",
                              style: GoogleFonts.abel(),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "PAN NO : ",
                              style: GoogleFonts.abel(),
                            ),
                            Text(
                              "AQSPH1894R3",
                              style: GoogleFonts.abel(),
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                "Model : ",
                                style: GoogleFonts.abel(),
                              ),
                              Text(
                                "SAM A51 6/128 Black",
                                style: GoogleFonts.abel(),
                              ),
                              SizedBox(
                                width: 40.0,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "PRICE : ",
                              style: GoogleFonts.abel(),
                            ),
                            Text(
                              "14999/-",
                              style: GoogleFonts.abel(),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Branch Code : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "QSR001",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "IMEI : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "355648759412",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "File Charge : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "300/-",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Duration : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "8",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "months",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Total Due : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "10299/-",
                    style: GoogleFonts.abel(),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "EMI : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "1299",
                    style: GoogleFonts.abel(),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Remaining Balance : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "8799",
                    style: GoogleFonts.abel(),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "EMI Paid : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "2",
                    style: GoogleFonts.abel(),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Ref. Name : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "Mohd Shazim",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Ref. Mob. No. : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "7017415962",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Date. : ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "16/8/21",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "email: ",
                    style: GoogleFonts.abel(),
                  ),
                  Text(
                    "mohdmonis123@gmail.com",
                    style: GoogleFonts.abel(),
                  )
                ],
              ),
              FittedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Text(
                      "Add : ",
                      style: GoogleFonts.abel(),
                    ),
                    Text(
                      "Islam Nagar near akhbaar factory karula moradabad",
                      style: GoogleFonts.abel(),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Image(
                        width: MediaQuery.of(context).size.width * 0.6,
                        image: AssetImage("adhar_front.jpg")),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Image(
                        width: MediaQuery.of(context).size.width * 0.6,
                        image: AssetImage("adhar_back.jpg")),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Image(
                        width: MediaQuery.of(context).size.width * 0.6,
                        image: AssetImage("pan.jpg")),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FittedBox(
                child: Row(
                  children: [
                    CupertinoButton(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.green,
                        child: Text("Pay EMI"),
                        onPressed: () {
                          _EMI_PopUp(context);
                        }),
                    CupertinoButton(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.red,
                        child: Text("Delete File"),
                        onPressed: () {
                          _deleted_confirm(context);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          label: Icon(
            Icons.download,
          )),
    );
  }
}
