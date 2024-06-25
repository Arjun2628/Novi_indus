import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://flutter-amr.noviindus.in/api';

  // Example method to fetch patient list with Bearer token
  Future<List<dynamic>?> fetchPatientList(String token) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/PatientList'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        // Decode the JSON response body
        Map<String, dynamic> responseBody = json.decode(response.body);
        List<dynamic>? patientList = responseBody['patient'];
        return patientList;
      } else {
        print('HTTP error ${response.statusCode}: ${response.body}');
        throw Exception('Failed to fetch patient list');
      }
    } catch (e) {
      print('Error fetching patient list: $e');
      return null;
    }
  }
}
// Example usage in a StatefulWidget
// class PatientListScreen extends StatefulWidget {
//   final String token;

//   const PatientListScreen({Key? key, required this.token}) : super(key: key);

//   @override
//   _PatientListScreenState createState() => _PatientListScreenState();
// }

// class _PatientListScreenState extends State<PatientListScreen> {
//   ApiService _apiService = ApiService();
//   List<dynamic>? _patients;

//   @override
//   void initState() {
//     super.initState();
//     _fetchPatientList();
//   }

//   void _fetchPatientList() async {
//     List<dynamic>? patients = await _apiService.fetchPatientList(widget.token);
//     if (patients != null) {
//       setState(() {
//         _patients = patients;
//       });
//     } else {
//       // Handle error
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to fetch patient list')),
//       );
//     }
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//   }