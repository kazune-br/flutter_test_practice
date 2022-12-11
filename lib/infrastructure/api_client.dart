// Package imports:
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

// Project imports:
import 'package:flutter_test_practice/infrastructure/dto.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/todos")
  Future<List<TodoDto>> getTodoList();

  @GET("/todos/{id}")
  Future<List<TodoDto>> getTodo(@Path("id") int id);
}
