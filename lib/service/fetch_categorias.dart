import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pr_cimentos/model/categoria.dart';

Future<List<Categoria>> fetchCategories() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Categoria> categories = (json.decode(response.body) as List)
        .map((data) => Categoria.fromJson(data))
        .toList();
    return categories;
  } else {
    throw Exception('Failed to load');
  }
}
