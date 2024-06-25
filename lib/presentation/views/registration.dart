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
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return CustomDialog();
                            },
                          );
                        },
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

class CustomDialog extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: height * 0.015),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose Treatment',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            DropdownListWidget(
              hintText: "Choose prefered treatment",
              trailingIcon: Icon(Icons.arrow_drop_down_outlined),
              dropdownItems: <String>['Option 1', 'Option 2', 'Option 3'],
              onChanged: (p0) {
                print("changed");
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.015),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Add Patients',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.060,
              width: double.infinity,
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.only(right: height * 0.010),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              // color: Colors.green,
                              borderRadius:
                                  BorderRadius.circular(height * 0.010)),
                          child: Padding(
                            padding: EdgeInsets.only(left: height * 0.015),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Male")),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.lightBlue,
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          CircleAvatar(
                            backgroundColor: Colors.green[900],
                            child: Text(
                              "-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.030),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            height: height * 0.060,
                            width: height * 0.060,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                // color: Colors.red,
                                borderRadius:
                                    BorderRadius.circular(height * 0.010)),
                          ),
                          Expanded(child: SizedBox()),
                          CircleAvatar(
                            backgroundColor: Colors.green[900],
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: height * 0.060,
              width: double.infinity,
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.only(right: height * 0.010),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              // color: Colors.green,
                              borderRadius:
                                  BorderRadius.circular(height * 0.010)),
                          child: Padding(
                            padding: EdgeInsets.only(left: height * 0.015),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Female")),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.lightBlue,
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          CircleAvatar(
                            backgroundColor: Colors.green[900],
                            child: Text(
                              "-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.030),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            height: height * 0.060,
                            width: height * 0.060,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                // color: Colors.red,
                                borderRadius:
                                    BorderRadius.circular(height * 0.010)),
                          ),
                          Expanded(child: SizedBox()),
                          CircleAvatar(
                            backgroundColor: Colors.green[900],
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 20.0),
            // Container(
            //   width: double.infinity,
            //   height: 25,
            //   child: DropdownButton<String>(
            //     value: _selectedValue,
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         _selectedValue = newValue;
            //       });
            //     },
            //     items: <String>['Option 1', 'Option 2', 'Option 3']
            //         .map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     }).toList(),
            //   ),
            // ),
            SizedBox(height: 20.0),
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).pop(_selectedValue);
            //   },
            //   child: Text('OK'),
            // ),
            Padding(
              padding:
                  EdgeInsets.only(left: height * 0.015, right: height * 0.015),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(_selectedValue);
                },
                child: Container(
                  height: height * 0.070,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(height * 0.010)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DropdownListWidget extends StatefulWidget {
  final String? tileName;
  final String? hintText;
  final Icon trailingIcon;
  final List<String> dropdownItems;
  final Function(String?) onChanged;

  const DropdownListWidget({
    super.key,
    this.tileName,
    this.hintText,
    required this.trailingIcon,
    required this.dropdownItems,
    required this.onChanged,
  });

  @override
  _DropdownInputWidgetState createState() => _DropdownInputWidgetState();
}

class _DropdownInputWidgetState extends State<DropdownListWidget> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.tileName ?? "")),
        Container(
          width: double.infinity,
          height: height * 0.070,
          decoration: BoxDecoration(
            color: Colors.grey[300], // Background color
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 0.5, color: Colors.grey), // Border radius
          ),
          child: Padding(
            padding: EdgeInsets.only(left: height * 0.020),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hintText ?? "",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    readOnly: true,
                    controller: TextEditingController(text: _selectedValue),
                  ),
                ),
                PopupMenuButton<String>(
                  icon: widget.trailingIcon,
                  onSelected: (String value) {
                    setState(() {
                      _selectedValue = value;
                    });
                    widget.onChanged(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return widget.dropdownItems
                        .map<PopupMenuItem<String>>((String value) {
                      return PopupMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
