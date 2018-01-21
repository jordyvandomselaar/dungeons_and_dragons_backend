import "package:dungeons_and_dragons_backend/jordy/migrations/lib/migrations.dart";

void main(List<String> arguments) {
  String command = arguments[0];

  migrate();
}

void migrate() {
  Schema.create("").then((Table table) {
    table.string("foo");
    print("foo");
  });
}
