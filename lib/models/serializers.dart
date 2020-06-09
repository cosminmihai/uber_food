library serializer;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/auth/auth_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
