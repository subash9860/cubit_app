import 'dart:math' as math show Random;

const names = [
  'Foo',
  'Bar',
  'Baz',
];

//create  extension on iterable of anything a generic

// Note: Extension methods add functionality to existing libraries.
// Extensions can define not just methods, but also other members such as getter, setters, and operators.
// Also, extensions have names,
// which can be helpful if an API conflict arises

// syntax:
// extension <extension name> on <type> {
// (<member definition>)*
// }

// Note: Iterable is a collection of element that can be accessed sequentially.
// it is an abstract class.
// both list and set are iterable.

// this id generic Iterable extension
extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(
        math.Random().nextInt(length),
      );
}
