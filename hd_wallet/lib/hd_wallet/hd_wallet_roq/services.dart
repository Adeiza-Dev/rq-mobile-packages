enum HDWalletService {
  swap('swap', 0),
  ticker('ticker', 1),
  sentry('sentry', 2);

  const HDWalletService(this.name, this.id);

  final String name;
  final int id;
}
