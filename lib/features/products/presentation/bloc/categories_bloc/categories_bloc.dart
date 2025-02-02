import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/common/errors/failures.dart';
import '../../../../../core/common/usecase/usecase.dart';
import '../../../../../core/utils/utils.dart';
import '../../../domain/usecases/get_categories.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetAllCategories getAllCategories;
  CategoriesBloc({required this.getAllCategories})
      : super(CategoriesState.loading()) {
    on<CategoriesEvent>((event, emit) async {
      await event.map(
          getAllCategoriesEvent: (_) async =>
              await _onGetAllCategoriesEvent(emit));
    });
  }
  Future<void> _onGetAllCategoriesEvent(Emitter<CategoriesState> emit) async {
    emit(CategoriesState.loading());

    final result = await getAllCategories(NoParams());
    emit(_resultToState(result));
  }

  CategoriesState _resultToState(Either<Failure, List<String>> result) {
    return result.fold(
        (failure) =>
            CategoriesState.error(mapFailureToMessage(failure: failure)),
        (categories) => CategoriesState.loaded(categories));
  }
}
