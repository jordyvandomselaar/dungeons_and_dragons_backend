import "dart:convert";

import 'package:shelf/shelf.dart';
import "package:shelf/shelf_io.dart" as io;
import 'package:shelf_rest/shelf_rest.dart';

void main() {
  Router myRouter = router()
    ..get('/', (Request request) => new Response.ok(JSON.encode("Foo!")));

  io.serve((myRouter.handler), "0.0.0.0", 8000);
}
