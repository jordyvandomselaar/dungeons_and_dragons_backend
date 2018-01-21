import "ColumnType.dart";

class VarcharColumnType extends ColumnType {
  VarcharColumnType(String name, [int length = 255]) : super(name, length);
}
