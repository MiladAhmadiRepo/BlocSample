import 'package:equatable/equatable.dart';

abstract class TimerState  extends Equatable
{

  final int duration;
  TimerState(this.duration);

  @override
  // TODO: implement props
  List<Object> get props => [duration];

}

class TimerInitial  extends TimerState
{
  TimerInitial(int duration) : super(duration);
@override
  String toString() {
    // TODO: implement toString
    return 'TimerInitial {duration: $duration}';
  }
}

class TimerRunPause   extends TimerState
{
  TimerRunPause (int duration) : super(duration);
  @override
  String toString() {
    // TODO: implement toString
    return 'TimerRunPause  {duration: $duration}';
  }
}

class TimerRunInProgress   extends TimerState
{
  TimerRunInProgress (int duration) : super(duration);
  @override
  String toString() {
    // TODO: implement toString
    return 'TimerRunInProgress  {duration: $duration}';
  }
}

class TimerRunComplete   extends TimerState
{
  TimerRunComplete (int duration) : super(duration);
}