import 'package:flutter/material.dart';
import 'package:app/ui/welcomeView/widgets/visit_card.dart';
import 'package:app/data/stores/visit_store.dart';
import 'package:app/ui/locator.dart';
import 'package:app/global/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class VisitCardList extends StatelessWidget {
  const VisitCardList({super.key, required this.panelController});

  final PanelController panelController;

  @override
  Widget build(BuildContext context) {
    var myStore = locator.get<VisitStore>();

    return ListView.builder(
      itemCount: myStore.visits.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: VisitCard(
            color: Colors.blue,
            locationText: myStore.visits[index].location,
            procedureText: myStore.visits[index].procedure,
            amountDue: "\$${myStore.visits[index].amountDue}",
            paid: myStore.visits[index].paid,
            imageURL: kPetProfile,
            onPressed: () =>
                {myStore.updateValues(index), panelController.open()}),
      ),
    );
  }
}
