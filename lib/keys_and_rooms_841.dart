class KeysAndRoomsSolution {
  bool canVisitAllRooms(List<List<int>> rooms) {
    final visited = <int>{};
    final queue = <int>[];
    queue.add(0);
    visited.add(0);
    while (queue.isNotEmpty) {
      int node = queue.removeAt(0);
      for (int next in rooms[node]) {
        if (!visited.contains(next)) {
          queue.add(next);
          visited.add(next);
        }
      }
    }
    return visited.length == rooms.length;
  }
}
