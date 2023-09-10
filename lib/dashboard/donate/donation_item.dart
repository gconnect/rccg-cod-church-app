import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_cod/utils/constants.dart';

class DonationItem extends StatelessWidget {
  final String donationType;
  final String bankName;
  final String accountName;
  final String accountNumber;

  const DonationItem({super.key, required this.donationType, required this.bankName, required this.accountName, required this.accountNumber});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: buttonColor,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: buttonColor),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text("Donation Type:", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(donationType, style: const TextStyle(fontSize: 18)),
          ],),
          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text("Bank Name:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Text(bankName, style: const TextStyle(fontSize: 18))
          ],),
          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text("Account Name:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Text(accountName, style: const TextStyle(fontSize: 18))
          ],),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text("Account Number:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            const SizedBox(width: 10,),
            Row(
              children: [
                Text(accountNumber, style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 10,),
                GestureDetector(child: const Icon(Icons.copy),
                  onTap: () => {},
                )
              ],
            )
          ],),
          // Divider(color: Colors.purple.shade900,)
        ],),
      ),
    );
  }
}
