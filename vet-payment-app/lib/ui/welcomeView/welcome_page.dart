import 'package:app/ui/locator.dart';
import 'package:app/ui/shared/pet_profile.dart';
import 'package:app/ui/welcomeView/widgets/payment_container.dart';
import 'package:app/ui/welcomeView/widgets/visit_card_list.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/shared/rounded_card.dart';
import 'package:app/global/constants.dart';
import 'package:app/data/stores/visit_store.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final PanelController panelController = PanelController();

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myStore = locator.get<VisitStore>();
    BorderRadiusGeometry radius = const BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      backgroundColor: backGroundColor,
      body: SlidingUpPanel(
        color: paymentCardBackGroundColor,
        controller: panelController,
        borderRadius: radius,
        backdropEnabled: true,
        minHeight: 1,
        panel: Center(
          child: Observer(
            builder: (_) => PaymentContainer(),
          ),
          //child: PaymentContainer(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: RoundedCard(
                      color: Colors.black, labelText: "Welcome Back, Marc!"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PetProfile(imageURL: kPetProfile, labelText: "Tex"),
                    PetProfile(imageURL: kPetProfile2, labelText: "Dakota"),
                    PetProfile(imageURL: kPetProfile3, labelText: ""),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Visits",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
                Observer(
                    builder: (_) =>
                        VisitCardList(panelController: panelController)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
