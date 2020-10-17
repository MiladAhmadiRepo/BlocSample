import 'package:bloc/bloc.dart';
import 'package:flutterbloc/TimerPackage/TimerEvent.dart';
import 'package:flutterbloc/TimerPackage/TimerState.dart';

class TimerBloc extends Bloc<TimerEvent,TimerState>
{
  TimerBloc():super();

  @override
  Stream<TimerState> mapEventToState(TimerEvent event)async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}