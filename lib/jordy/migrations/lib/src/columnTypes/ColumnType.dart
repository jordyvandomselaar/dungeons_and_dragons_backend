abstract class ColumnType {
  int _length;
  String _name;
  bool _nullable = false;

  int get length => this._length;

  String get name => this._name;

  bool get isNullable => this._nullable;

  ColumnType(this._name, [this._length = 255]);

  ColumnType nullable() {
    this._nullable = true;

    return this;
  }
}
