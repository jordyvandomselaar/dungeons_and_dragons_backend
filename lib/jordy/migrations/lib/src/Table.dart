import "columnTypes/ColumnType.dart";
import "columnTypes/VarcharColumnType.dart";

class Table {
  List<ColumnType> _columns = new List<ColumnType>();

  void string(String name, [int length = 255]) {
    this._columns.add(new VarcharColumnType(name, length));
  }

  void autoIncrements([String name = "id"]) {}
}
