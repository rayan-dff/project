// 01_isolates.dart — isolates
import 'dart:isolate';

// TODO: worker(SendPort reply): listen for ints, send back squares.
// TODO: squareInIsolate(int n): spawns an isolate that returns n*n.

Future<void> main() async {
  // print(await squareInIsolate(12)); // 144
}