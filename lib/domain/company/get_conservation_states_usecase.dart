import 'package:dartz/dartz.dart';
import 'package:patrimony/domain/company/company_repository.dart';
import 'package:patrimony/domain/utils/errors.dart';
import 'package:patrimony/entity/common_value_entity.dart';

mixin _UseCase {
  Future<Either<Failure, List<CommonValueEntity>>> call();
}

class GetConservationStatesUseCase implements _UseCase {
  final CompanyRepository _repository;

  GetConservationStatesUseCase(this._repository);

  @override
  Future<Either<Failure, List<CommonValueEntity>>> call() async {
    return await _repository.getConservationStates();
  }
}