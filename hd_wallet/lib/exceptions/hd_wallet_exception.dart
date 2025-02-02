class HDWalletException implements Exception {
  final String status;
  final String title;
  final Map<String, String> reasons;

  HDWalletException(this.status, this.title, {this.reasons = const {}});

  @override
  String toString() {
    return 'HDWalletException{status: $status, title: $title, reasons: $reasons}';
  }
}
