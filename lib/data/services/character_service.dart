import 'package:dio/dio.dart';
import '../models/character_model.dart';

class CharacterService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://hp-api.onrender.com/api'));

  Future<List<CharacterModel>> fetchCharacters() async {
    try {
      final response = await _dio.get('/characters');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => CharacterModel.fromJson(e)).toList();
      } else {
        throw Exception("API Hatası: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Veri çekilemedi: $e");
    }
  }
}
