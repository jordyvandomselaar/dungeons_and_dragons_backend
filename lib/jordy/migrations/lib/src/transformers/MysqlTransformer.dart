import "./AbstractTransformer.dart";
import "../Table.dart";
import "../columnTypes/IntegerColumnType.dart";
import "../columnTypes/VarcharColumnType.dart";

class MysqlTransformer implements AbstractTransformer {
  String sql = "";
  String name;
  Table table;

  @override
  String transform(String name, Table table) {
    this.name = name;
    this.table = table;

    this._generateCreateStatement();
    this._generateVarcharSql();
    this._generateIntSql();
    this._generateClosingSql();

    return this.sql;
  }

  void _generateCreateStatement() {
    this.sql += "CREATE TABLE ${this.name}\n(";
  }

  void _generateClosingSql() {
    this.sql += """

)
ENGINE=InnoDB;
""";
  }

  void _generateVarcharSql() {
    String _sql = "";

    this.table.varcharColumns.forEach((VarcharColumnType column) =>
    _sql += """

  ${column.name} VARCHAR(${column.length})"""
    );

    this.sql += _sql;
  }

  void _generateIntSql() {
    String _sql = "";

    this.table.integerColumns.forEach((IntegerColumnType column) =>
    _sql += """
      
  ${column.name} INT(${column.length})\
  ${column.isNullable ? "DEFAULT NULL" : ""}\
  ${column.isUnsigned ? "UNSIGNED" : ""}"""
    );

    this.sql += _sql;
  }
}
