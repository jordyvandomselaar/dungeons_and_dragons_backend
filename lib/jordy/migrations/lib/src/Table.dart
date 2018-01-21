import "columnTypes/IntegerColumnType.dart";
import "columnTypes/VarcharColumnType.dart";

class Table {
  List<VarcharColumnType> varcharColumns = new List<VarcharColumnType>();
  List<IntegerColumnType> integerColumns = new List<IntegerColumnType>();

  void autoIncrements([String name = "id"]) {
    this.integer(name).unsigned();
  }

  VarcharColumnType string(String name, [int length = 255]) {
    VarcharColumnType varcharColumnType = new VarcharColumnType(name, length);

    this.varcharColumns.add(varcharColumnType);

    return varcharColumnType;
  }

  IntegerColumnType integer(String name, [int length = 255]) {
    IntegerColumnType integerColumnType = new IntegerColumnType(name, length);

    this.integerColumns.add(integerColumnType);

    return integerColumnType;
  }
}
