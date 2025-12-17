class Exchange {
  final ExchangeType type;
  final String name;
  final double amount;
  final String memo;

  const Exchange(this.type, this.name, this.amount, this.memo);
}

enum ExchangeType { send, request }
