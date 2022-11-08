import 'package:app/models/visit.dart';
import 'package:dio/dio.dart';
import 'package:app/data/services/service.dart';

class UserDataService extends Service {
  late List<Visit> visits;

  Future<List<Visit>> getUser(String email) async {
    try {
      Response response = await dio.get('$baseURL/user/$email');
      if (response.statusCode == 200) {
        visits = (response.data as List)
            .map((data) => Visit.fromJsom(data))
            .toList();
      }
      return visits;
    } on Exception {
      rethrow;
    }
  }

  Future<List<Visit>> payVisit(int visitId) async {
    try {
      Response response = await dio.patch('$baseURL/visitid/$visitId');
      if (response.statusCode == 200) {
        visits = (response.data as List)
            .map((data) => Visit.fromJsom(data))
            .toList();
      }
      return visits;
    } on Exception {
      rethrow;
    }
  }
}
