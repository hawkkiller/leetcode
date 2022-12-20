import 'package:leetcode/keys_and_rooms_841.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final solution = KeysAndRoomsSolution();
  final rooms = <List<int>>[
    [4],
    [3],
    [],
    [2, 5, 7],
    [1],
    [],
    [8, 9],
    [],
    [],
    [6]
  ];
  group('Keys and Rooms', () {
    test('canVisitAllRooms Case 1', () {
      expect(solution.canVisitAllRooms(rooms), false);
    });
    test('canVisitAllRooms Case 2', () {
      expect(
        solution.canVisitAllRooms([
          [1, 3],
          [3, 0, 1],
          [2],
          [0]
        ]),
        false,
      );
    });
  });
}
