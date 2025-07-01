import 'package:collection/collection.dart';

/// reservation statuses
enum Status {
  Confirmada,
  Processando,
  Cancelada,
}

enum Roles {
  Padrao,
  Adm,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (Roles):
      return Roles.values.deserialize(value) as T?;
    default:
      return null;
  }
}
