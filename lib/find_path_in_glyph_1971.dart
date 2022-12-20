class FindPathInGlyphSolution {
  List<int> parent = [];
  int findParent(int node) {
    return parent[node] == node
        ? node
        : (parent[node] = findParent(parent[node]));
  }

  void makeSameGroup(int u, int v) {
    int pu = findParent(u);
    int pv = findParent(v);
    parent[pu] = pv;
  }

  bool validPath(int n, List<List<int>> edges, int source, int destination) {
    // resizing an array
    parent = List.filled(n, 0);
    for (int i = 0; i < n; i++) {
      parent[i] = i;
    }

    for (final List<int> e in edges) {
      makeSameGroup(e[0], e[1]);
    }
    return findParent(source) == findParent(destination);
  }
}
