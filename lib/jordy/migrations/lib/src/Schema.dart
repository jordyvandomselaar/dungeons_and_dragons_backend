import "dart:async";

import "Table.dart";
import "transformers/MysqlTransformer.dart";

class Schema {
  static Future<Table> create(String name, Table Function(Table) callback) {
    Table table = new Table();

    callback(table);

    String sql = new MysqlTransformer().transform(name, table);

    print(sql);
  }
}
