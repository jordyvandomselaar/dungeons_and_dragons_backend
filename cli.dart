import "package:dungeons_and_dragons_backend/jordy/migrations/lib/migrations.dart";

void main(List<String> arguments) {
  String command = arguments[0];

  migrate();
}

void migrate() {
  Schema.create("users", (Table table) {
    table.autoIncrements();
    table.string("foo").nullable();
    table.string("derp");
  });
}
