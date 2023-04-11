


class TransactionModel {
  final int id;
  final String name;
  final String address;
  final String productType;
  final int orderAmount;
  final String orderDate;
  final String paymentType;
  final int paymentAmount;
  final String deliveryStatus;

  TransactionModel({
    required this.id,
    required this.name,
    required this.address,
    required this.productType,
    required this.orderAmount,
    required this.orderDate,
    required this.paymentType,
    required this.paymentAmount,
    this.deliveryStatus = 'Pending', // set to "Pending" by default
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'productType': productType,
      'orderAmount': orderAmount,
      'orderDate': orderDate,
      'paymentType': paymentType,
      'paymentAmount': paymentAmount,
      'deliveryStatus': deliveryStatus,
    };
  }
}
