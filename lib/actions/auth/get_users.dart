library get_users;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/auth/app_user.dart';

part 'get_users.g.dart';

abstract class GetUsers //
    implements
        Built<GetUsers, GetUsersBuilder>,
        AppAction //
{
  factory GetUsers([void Function(GetUsersBuilder b) updates]) = _$GetUsers;

  GetUsers._();
}

abstract class GetUsersSuccessful //
    implements
        Built<GetUsersSuccessful, GetUsersSuccessfulBuilder>,
        AppAction //
{
  factory GetUsersSuccessful(List<AppUser> users) {
    return _$GetUsersSuccessful((GetUsersSuccessfulBuilder b) => b.users = ListBuilder<AppUser>(users));
  }

  GetUsersSuccessful._();

  BuiltList<AppUser> get users;
}

abstract class GetUsersError //
    implements
        Built<GetUsersError, GetUsersErrorBuilder>,
        ErrorAction //
{
  factory GetUsersError(Object error) {
    return _$GetUsersError((GetUsersErrorBuilder b) => b.error = error);
  }

  GetUsersError._();

  @override
  Object get error;
}
