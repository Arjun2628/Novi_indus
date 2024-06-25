import 'package:flutter/material.dart';
import 'package:noviindus/presentation/widgets/dropdown_input.dart';
import 'package:noviindus/presentation/widgets/input_text_field.dart';
import 'package:noviindus/presentation/widgets/payment_options.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                // color: Colors.amber,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      trailing: Icon(Icons.notifications_none_outlined,
                          color: Colors.black),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03, bottom: height * 0.02),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Container(
                      height: 0.15,
                      width: double.infinity,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 10,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                // color: Colors.lightBlue,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.050),
                      child: InputTileWidget(
                        tileName: "Name",
                        hintText: "Enter name",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Whatsapp Number",
                        hintText: "Enter your Whatsapp number",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Address",
                        hintText: "Enter your full address",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: DropdownInputWidget(
                        tileName: "Location",
                        hintText: "Choose your location",
                        trailingIcon: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: DropdownInputWidget(
                        tileName: "Branch",
                        hintText: "Select the branch",
                        trailingIcon: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03, top: height * 0.025),
                      child: Text("Treatments"),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: height * 0.03,
                              right: height * 0.03,
                              top: height * 0.025),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            color: Colors.amber,
                          ),
                        );
                      },
                      itemCount: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: Container(
                        width: double.infinity,
                        height: height * 0.070,
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius:
                                BorderRadius.circular(height * 0.010)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Text(" Add Treatments"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Total Amount",
                        // hintText: "Enter name",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Discount Amount",
                        // hintText: "Enter name",
                      ),
                    ),
                    PaymentOptions(),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Advance Amount",
                        // hintText: "Enter name",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: InputTileWidget(
                        tileName: "Balance Amount",
                        // hintText: "Enter name",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.025),
                      child: DropdownInputWidget(
                        tileName: "Treatment Date",
                        // hintText: "Enter name",
                        trailingIcon: Icon(Icons.calendar_today_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: height * 0.03,
                        right: height * 0.03,
                        top: height * 0.025,
                        bottom: height * 0.04,
                      ),
                      child: Container(
                        height: height * 0.100,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 9,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: DropdownInputWidget(
                                  tileName: "Treatment Time",
                                  hintText: "Hours",
                                  trailingIcon:
                                      Icon(Icons.arrow_drop_down_outlined),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                            Flexible(
                              flex: 9,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: DropdownInputWidget(
                                  // tileName: "Name",
                                  hintText: "Minutes",
                                  trailingIcon:
                                      Icon(Icons.arrow_drop_down_outlined),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: height * 0.03,
                          right: height * 0.03,
                          top: height * 0.055,
                          bottom: height * 0.015),
                      child: Container(
                        width: double.infinity,
                        height: height * 0.070,
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius:
                                BorderRadius.circular(height * 0.010)),
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
