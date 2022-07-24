// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Repository {

//   final String baseUrl = "http://arsitekco.proyek.ti.polindra.ac.id/api";
//   // final String baseUrl = "http://192.168.42.231:8000/api";
//   // final String baseUrl = "http://127.0.0.1:8888/api";
//   // final String baseUrl = "http://192.168.18.58:8000/api";

//   // final String baseUrl = "http://192.168.100.75:8000/api";

//   // final String baseUrl = "http://192.168.123.58:8000/api";
//   // final String baseUrl = "http://192.168.43.163:8000/api";
//   Future<dynamic> post(String url, {required Map headers, body, encoding}) {
// print(url);
// print(body);
// return http
//     .post(BASE_URL+url, body: body, headers: headers, encoding: encoding)
//     .then((http.Response response) {
//   final String res = response.body;
//   final int statusCode = response.statusCode;

//   print(res);

//   if (statusCode < 200 || statusCode > 400 || json == null) {
//     throw Exception("Error while fetching data");
//   }
//   return _decoder.convert(res);
// });
// }
// }