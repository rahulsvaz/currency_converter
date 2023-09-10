import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text(
                '0',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.currency_exchange,
                      color: Colors.white,
                    ),
                    hintText: 'Please enter the amount in usd',
                    hintStyle: const TextStyle(color: Colors.white60),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(55),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 50)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
