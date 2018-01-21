import "dart:async";

import "Table.dart";

class Schema {
  static Future<Table> create(String name) {
    return new Future(() => new Table());
  }
}
