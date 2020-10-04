import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import 'package:library/src/repositories/repositories.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final CalibreRepository _calibreRepository;

  AppBloc(this._calibreRepository) : super(AppInitial());

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is AppEventInitialize) {
      var initialData = await _calibreRepository.initializeApp();
      if (initialData['path'] != null) {
        yield AppStateWithPath(initialData['path'], initialData['isCalibreExist']);
      }
    }
    if (event is AppEventChangeState) {
      yield AppStateWithPath(event.path, event.isCalibreExist);
    }
  }

  @override
  String toString() {
    return 'app/bloc/app_bloc.dart';
  }
}