abstract class Usecase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UsecaseNoParams<Type> {
  Future<Type> call();
}
