import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/data/repositories/product_repository_impl.dart';
import 'package:flutter_template/src/data/repositories/router_repository_impl.dart';
import 'package:flutter_template/src/domain/repositories/product_home_repository.dart';
import 'package:flutter_template/src/domain/use_cases/authentication_use_cases.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repositories/add_product_repository_impl.dart';
import '../../data/repositories/authentication_repository_impl.dart';
import '../../data/services/cache/cache_service.dart';
import '../../data/services/network/interceptor/token_manager.dart';
import '../../data/services/network/rest_client.dart';
import '../../domain/repositories/add_repository.dart';
import '../../domain/repositories/router_repository.dart';
import '../../domain/use_cases/add_product_use_case.dart';
import '../../domain/use_cases/product_use_case.dart';

part 'dependency_injection.g.dart';
part 'parts/externals.dart';
part 'parts/repository.dart';
part 'parts/services.dart';
part 'parts/use_cases.dart';
