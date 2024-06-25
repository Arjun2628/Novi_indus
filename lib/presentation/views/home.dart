import 'package:flutter/material.dart';
import 'package:noviindus/data/apis/patients_list.dart';
import 'package:noviindus/presentation/views/registration.dart';

class Home extends StatelessWidget {
  final ApiService _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        body: SafeArea(
            child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    // color: Colors.brown,
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
                        Container(
                          height: height * 0.055,
                          width: double.infinity,
                          // color: Colors.amber,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: height * 0.025),
                                    child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5, color: Colors.grey),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                height * 0.010)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: height * 0.010),
                                              child: Icon(Icons.search),
                                            ),
                                            SizedBox(
                                              width: height * 0.010,
                                            ),
                                            Expanded(
                                                child: Container(
                                                    child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText:
                                                      "Search for treatments"),
                                            ))),
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.green[900],
                                          borderRadius: BorderRadius.circular(
                                              height * 0.010)),
                                      child: Center(
                                          child: Text(
                                        "Search",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.020),
                          child: Container(
                            height: height * 0.055,
                            width: double.infinity,
                            // color: Colors.amber,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: height * 0.015),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Sort by :")),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: height * 0.025,
                                          right: height * 0.035),
                                      child: Container(
                                        height: double.infinity,
                                        width: height * 0.02,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5, color: Colors.grey),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                height * 0.025)),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: height * 0.020),
                                              child: Text("Date"),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: height * 0.020),
                                              child: Icon(Icons
                                                  .arrow_drop_down_outlined),
                                            ),
                                          ],
                                        ),
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
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: PatientList(apiService: _apiService, height: height),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: height * 0.010),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registration(),
                        ));
                  },
                  child: Container(
                    height: height * 0.065,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.010),
                      color: Colors.green[900],
                    ),
                    child: Center(
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class PatientList extends StatelessWidget {
  const PatientList({
    super.key,
    required ApiService apiService,
    required this.height,
  }) : _apiService = apiService;

  final ApiService _apiService;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>?>(
      future: _apiService.fetchPatientList(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxODA1NjE4OTQwLCJpYXQiOjE3MTkyMTg5NDAsImp0aSI6IjQ2Zjk5YzAwNzVlYjQ5ZmRhMjE1NGJjNmFjYWFlMDE5IiwidXNlcl9pZCI6MjF9.E1UYHkbWbATDcUTWxzQIOcJyv2DCsu7xwrGlxMquP-0'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No patient data available'));
        } else {
          List<dynamic>? patientList = snapshot.data;
          return ListView.builder(
            itemCount: patientList!.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> patient = patientList[index];
              final patientDetails = patient["patientdetails_set"];
              return Padding(
                padding: EdgeInsets.only(
                    top: height * 0.010,
                    bottom: height * 0.010,
                    left: height * 0.020,
                    right: height * 0.020),
                child: Container(
                  height: height * 0.210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(height * 0.010)),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          // color: Colors.red,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  // color: Colors.brown,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 0.030),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        "${(index + 1).toString()}.",
                                        style:
                                            TextStyle(fontSize: height * 0.035),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 8,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  // color: Colors.lightBlue,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: height * 0.030,
                                        left: height * 0.020),
                                    child: Column(
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(patient['name'],
                                                style: TextStyle(
                                                    fontSize: height * 0.035))),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.010,
                                              right: height * 0.020),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "datagijhoijokjoikokoklklkjlkjljkljljnljnljnljnkjnljjnljnlnlnllkjlnljnjljnjnjnjnlnljn",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.green[900],
                                                      fontSize:
                                                          height * 0.020))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.020),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: Colors.red,
                                                  ),
                                                  Text("13/23/22"),
                                                  SizedBox(
                                                      width: height * 0.020),
                                                  Icon(Icons.people_outline,
                                                      color: Colors.red),
                                                  Text("data",
                                                      style: TextStyle(
                                                          fontSize:
                                                              height * 0.020)),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            // color: Colors.lightBlue,
                            child: Stack(
                              children: [
                                Center(child: Text("View Booking details")),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: height * 0.010),
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.green[900],
                                      )),
                                )
                              ],
                            )
                            // child: Column(
                            //   children: [
                            //     Align(
                            //         alignment: Alignment.topCenter,
                            //         child: Divider())
                            //   ],
                            // ),
                            ),
                      ),
                    ],
                  ),
                ),
              );
              // ListTile(
              //   title: Text(patient['name']),
              //   subtitle: Text('ID: ${patient['id']}'),
              // );
            },
          );
        }
      },
    );
  }
}
