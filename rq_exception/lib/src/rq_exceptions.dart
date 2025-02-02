class RQException implements Exception {
  final String message;

  RQException(this.message);

  @override
  String toString() => message;
}

class UnfulfilledExhaustiveException extends RQException {
  UnfulfilledExhaustiveException(super.message);
}

class HDWalletException extends RQException {
  HDWalletException(super.message);
}

class UnknownProviderException extends RQException {
  UnknownProviderException(super.message);
}

class ConnectionManagerException extends RQException {
  ConnectionManagerException(super.message);
}

class InvalidResponseException extends RQException {
  InvalidResponseException(super.message);
}

class MigrationException<T> extends RQException {
  final T data;
  final Exception exception;

  MigrationException(
    super.message, {
    required this.exception,
    required this.data,
  });
}

class SwapException extends RQException {
  SwapException(super.message);
}

class UnsupportedAddressException extends RQException {
  UnsupportedAddressException(super.message);
}

class AuthException extends RQException {
  AuthException(super.message);
}

class WalletConnectException extends RQException {
  WalletConnectException(super.message);
}

class WebViewException extends RQException {
  WebViewException(super.message);
}

class UnsupportedDappActionException extends RQException {
  UnsupportedDappActionException(super.message);
}

class StorageKeyNotFoundException extends RQException {
  StorageKeyNotFoundException(super.message);
}

class AbiClientException extends RQException {
  AbiClientException(super.message);
}

class TestException extends RQException {
  // Crreate constructor with a default value

  TestException([super.message = 'Test exception']);
}

class UnsupportedMethodForPlatformException extends RQException {
  UnsupportedMethodForPlatformException([
    super.message = 'This functionality is not supported on this platform.',
  ]);
}

class UnsupportedBlockchainAccountException extends RQException {
  UnsupportedBlockchainAccountException([super.message = 'Unsupported blockchain account type.']);
}

class InvalidArgumentsException extends RQException {
  InvalidArgumentsException(super.message);
}

class PartisiaByocException extends RQException {
  PartisiaByocException(super.message);
}

class InvalidBlockchainException extends RQException {
  InvalidBlockchainException([super.message = 'Invalid blockchain']);
}

class UnsupportedBlockchainException extends RQException {
  final String eucId;

  UnsupportedBlockchainException(this.eucId) : super('Invalid blockchain with eucId $eucId');
}

class UnsupportedFunctionException extends RQException {
  UnsupportedFunctionException(super.message);
}

class InvalidSchemeException extends RQException {
  final String scheme;
  InvalidSchemeException(this.scheme) : super('Invalid scheme $scheme');
}

class BlockchainMismatchException extends RQException {
  BlockchainMismatchException([super.message = 'Blockchain Mismatch Exception']);
}

class EVMRequestMethodException extends RQException {
  EVMRequestMethodException([super.message = 'Error in evm request method']);
}

class PartisiaRequestMethodException extends RQException {
  PartisiaRequestMethodException([super.message = 'Error in Partisia request method']);
}

class TransactionSigningException extends RQException {
  TransactionSigningException(super.message);
}

class IsolateBalanceFetchingException extends RQException {
  IsolateBalanceFetchingException(super.message);
}

class DappRequestException extends RQException {
  DappRequestException(super.message);
}

class ServiceNotFoundException extends RQException {
  final String serviceId;

  ServiceNotFoundException(this.serviceId) : super('Service not found: $serviceId');
}

class InvalidFCMNotificationTypeException extends RQException {
  final String url;

  InvalidFCMNotificationTypeException(this.url) : super('Invalid FCM notification type: $url');
}

class UnsupportedImageTypeException extends RQException {
  final String imagePath;

  UnsupportedImageTypeException(this.imagePath) : super('Unsupported image type: $imagePath');
}

class CastException extends RQException {
  CastException(super.message);
}
