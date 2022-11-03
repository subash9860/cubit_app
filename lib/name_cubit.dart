import 'package:bloc/bloc.dart';
import 'package:bloc_test_course_app/random_element_extension.dart';

//  Cubit is the simple case bloc, a stream component
//that uses functions to communicate interactions from
// widgets to the cubit and a stream that widgets consume
// for which state changes are emitted.

// Cubit is like a stream

class NameCubit extends Cubit<String?> {
  NameCubit() : super(null);
// An Emitter is a class which is capable of emitting new states.
// emit means throw
  void pickRandomName() => emit(
        names.getRandomElement(),  
      );
}
