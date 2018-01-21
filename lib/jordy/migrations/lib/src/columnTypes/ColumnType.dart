abstract class ColumnType {
  int _length;
  String _name;
  bool _nullable = false;

  int get length => this._length;

  String get name => this._name;

  bool get isNullable => this._nullable;

  // Every child class should implement this.
  String get sqlName;

  ColumnType(String this._name, [int this._length = 255]);

  ColumnType nullable() {
    this._nullable = true;

    return this;
  }
}
