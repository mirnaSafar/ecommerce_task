import 'package:dartz/dartz.dart';
import '../errors/failures.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
