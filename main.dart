import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'user_transaction',
    home: Transaction(),
  ));
}

class AppTheme {
  static const Color forbodybackground = Color.fromRGBO(237, 239, 249, 1.000);
  static const Color forbutton1 = Color.fromRGBO(59, 170, 154, 1.000);

  static const TextStyle fortextbutton1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Work Sans',
    fontSize: 16,
    color: Color.fromRGBO(255, 255, 255, 1.000),
  );
  static const TextStyle fortextbutton2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Work Sans',
    fontSize: 16,
    color: Color.fromRGBO(102, 102, 102, 1.000),
  );

  static const TextStyle forTextStyle1 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    fontFamily: 'Work Sans',
    color: Color.fromRGBO(33, 33, 33, 1.000),
  );

  static const TextStyle forTextStyle2 = TextStyle(
    fontSize: 14,
    color: Color.fromRGBO(33, 33, 33, 1.000),
    fontFamily: 'Work Sans',
  );
}

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.forbodybackground,
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Product Type (Alkaline, Mineral)',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Order Amount',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: 'Order Date (YYYY-MM-DD)',
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Payment Type',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'gcash',
                        child: Text('GCash'),
                      ),
                      DropdownMenuItem(
                        value: 'cash',
                        child: Text('Cash'),
                      ),
                      DropdownMenuItem(
                        value: 'paymaya',
                        child: Text('PayMaya'),
                      ),
                      DropdownMenuItem(
                        value: 'others',
                        child: Text('Others'),
                      ),
                    ],
                    onChanged: (String? value) {},
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Payment Amount',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Delivery Status: Pending',
                    style: AppTheme.forTextStyle2,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                backgroundColor: AppTheme.forbutton1,
                minimumSize: const Size(301, 40),
              ),
              child: const Text('Submit', style: AppTheme.fortextbutton1),
              onPressed: () async {
                // Handle form submission here

                // final name = _nameController.text;
                // final address = _addressController.text;
                // final productType = _productTypeController.text;
                // final orderAmount = double.parse(_orderAmountController.text);
                // final orderDate = _orderDateController.text;
                // final paymentType = _paymentTypeController.text;
                // final paymentAmount = double.parse(_paymentAmountController.text);

                // final Map<String, dynamic> row = {
                //   'name': name,
                //   'address': address,
                //   'productType': productType,
                //   'orderAmount': orderAmount,
                //   'orderDate': orderDate,
                //   'paymentType': paymentType,
                //   'paymentAmount': paymentAmount,
                // };

                // final dbHelper = DatabaseHelper();
                // await dbHelper.insert(row);

                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text('Data saved successfully')),
                // );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
