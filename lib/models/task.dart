class Task {
  String productId;
  String agentId;
  String roleId;
  String orderId;
  int quantity;
  DateTime startTime;
  DateTime?
      finishTime; 

  Task({
    required this.productId,
    required this.agentId,
    required this.roleId,
    required this.orderId,
    required this.quantity,
    required this.startTime,
    this.finishTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'agentId': agentId,
      'roleId': roleId,
      'orderId': orderId,
      'quantity': quantity,
      'startTime': startTime.toIso8601String(),
      if (finishTime != null) 'finishTime': finishTime?.toIso8601String(),
    };
  }
}
