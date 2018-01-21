import "../Table.dart";

abstract class AbstractTransformer {
  String transform(String name, Table table);
}
