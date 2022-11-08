import 'package:flutter/material.dart';
import 'package:app/ui/locator.dart';
import 'package:app/data/stores/visit_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var myStore = locator.get<VisitStore>();

    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration.collapsed(
                hintText: 'Card Number',
              ),
              onSaved: (String? value) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Expiration Date',
                  ),
                  onSaved: (String? value) {},
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'CVV',
                  ),
                  onSaved: (String? value) {},
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextFormField(
              decoration: const InputDecoration.collapsed(
                hintText: 'Billing Zip Code',
              ),
              onSaved: (String? value) {},
            ),
          ),
          Observer(
            builder: (_) => Text(
              "\$${myStore.visits[myStore.chosenVisitCardIndex].amountDue}",
              style: const TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "I agree to the terms of payment",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Checkbox(value: true, onChanged: (bool? value) => {})
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
                shape: const StadiumBorder(),
              ),
              onPressed: () => {myStore.payVisit()},
              child: const Text("Confirm Payment",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
