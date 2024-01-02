import 'dart:convert';

import 'package:flutter_image_search_app_ver1/data/dto/pixaybay_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  Future<PixaybayDto> getImageResult(String query) async {
    final response = await http.get(
      Uri.parse(
          'https://pixabay.com/api/?key=41490894-18bca8c98867b05cc6159e7e7&q=$query&image_type=photo'),
    );
    return PixaybayDto.fromJson(jsonDecode(response.body));
  }
}
