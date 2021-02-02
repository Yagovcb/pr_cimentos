import 'dart:convert';
import 'package:http/http.dart' as http;
import './../model/produtos.dart';

Future<List<Produto>> fecthProdutos() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Produto> produtos = (json.decode(response.body) as List)
        .map((data) => Produto.fromJson(data))
        .toList();
    return produtos;
  } else {
    throw Exception('Falha ao carregar');
  }
}
