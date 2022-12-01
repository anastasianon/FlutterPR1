import 'package:dartz/dartz.dart';
import '../../domain/entity/role_entity.dart';

abstract class AuthUserCase<String, Params> {
  Future<Either<String, RoleEnum>> signIn(Params params);
  Future<Either<String, bool>> signUp(Params params);
}
