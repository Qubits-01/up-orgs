import '../../constants/enums/storage_types_enum.dart';
import '../interfaces/exception_intf.dart';

class StorageException extends ExceptionIntf {
  const StorageException({
    required super.title,
    required super.message,
    required super.stackTrace,
    required StorageTypesEnum storageType,
  }) : _storageTypesEnum = storageType;

  final StorageTypesEnum _storageTypesEnum;

  StorageTypesEnum get storageType => _storageTypesEnum;

  @override
  List<Object?> get props => [title, message, stackTrace, storageType];
}
