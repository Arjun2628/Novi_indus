import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: height * 0.03,
            top: height * 0.03,
          ),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Payment Option',
                // style: normal,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
                  // color: Colors.amber,
                  width: double.infinity,
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.grey),
                    child: RadioListTile(
                      // fillColor: 0xFFFF,
                      activeColor: Colors.white,
                      title: Text(
                        "Cash",
                        // style: normal,
                      ),
                      value: true,
                      groupValue: 1,
                      onChanged: (value) {
                        // addProfile.genderSelection("male");
                      },
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.grey),
                    child: RadioListTile(
                      activeColor: Colors.white,
                      title: Text(
                        "Card",
                        // style: normal,
                      ),
                      value: true,
                      groupValue: 0,
                      onChanged: (value) {
                        // addProfile.genderSelection("female");
                      },
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.grey),
                    child: RadioListTile(
                      activeColor: Colors.white,
                      title: Text(
                        "UPI",
                        // style: normal,
                      ),
                      value: true,
                      groupValue: 0,
                      onChanged: (value) {
                        // addProfile.genderSelection("female");
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: double.infinity,
        //   child: Theme(
        //     data: ThemeData(unselectedWidgetColor: Colors.white),
        //     child: RadioListTile(
        //       activeColor: Colors.white,
        //       title: Text(
        //         "Others",
        //         // style: normal,
        //       ),
        //       value: true,
        //       groupValue: 2,
        //       onChanged: (value) {
        //         // addProfile.genderSelection("others");
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
