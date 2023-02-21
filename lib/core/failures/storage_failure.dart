import '../../constants/enums/storage_types_enum.dart';
import '../interfaces/failure_intf.dart';

class StorageFailure extends FailureIntf {
  // TODO: Add test on this class.

  const StorageFailure({
    required super.title,
    required super.message,
    required StorageTypesEnum storageType,
  }) : _storageType = storageType;

  final StorageTypesEnum _storageType;

  StorageTypesEnum get storageType => _storageType;

  @override
  List<Object?> get props => [title, message, storageType];
}
