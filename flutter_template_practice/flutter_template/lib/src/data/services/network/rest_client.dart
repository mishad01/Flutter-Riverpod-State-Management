import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/login_model.dart';
import 'endpoints.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Endpoints.base)
abstract class RestClient {
  factory RestClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger errorLogger,
  }) = _RestClient;

  @POST(Endpoints.base)
  Future<HttpResponse> login(@Body() LoginRequestModel request);

  @GET(Endpoints.getProduct)
  Future<HttpResponse> fetchProducts();

  @POST(Endpoints.createProduct)
  Future<HttpResponse> addProduct({
    @Body() required Map<String, dynamic> body,
  });
}
