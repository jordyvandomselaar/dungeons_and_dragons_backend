import "ColumnType.dart";

class IntegerColumnType extends ColumnType {
  bool _unsigned = false;

  @override
  String get sqlName => "INTEGER";

  IntegerColumnType(String name, [int length = 255]) : super(name, length);

  IntegerColumnType unsigned() {
    this._unsigned = true;

    return this;
  }
}
