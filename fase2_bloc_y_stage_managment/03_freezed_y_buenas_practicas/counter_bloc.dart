import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';

@freezed
sealed class CounterEvent with _$CounterEvent {
  const factory CounterEvent.incrementPressed() = IncrementPressed;
  const factory CounterEvent.decrementPressed() = DecrementPressed;
}

@freezed
class CounterState with _$CounterState {
  const factory CounterState({required int counter}) = _CounterState;
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<CounterEvent>((event, emit) {
      switch (event) {
        case IncrementPressed():
          emit(state.copyWith(counter: state.counter + 1));
        case DecrementPressed():
          emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
