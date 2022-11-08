import 'package:app/data/stores/visit_store.dart';
import 'package:app/ui/layouts/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:app/global/constants.dart';
import 'package:app/ui/locator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    var myStore = locator.get<VisitStore>();
    // final store = Provider.of<VisitStore>(context);
    //final VisitStore visitStore = locator.getIt<VisitStore>();

    return DefaultLayout(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              kLoginHeaderText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Enter your email address',
                      ),
                      controller: textController,
                      onSaved: (String? value) {
                        //controller.email = value!;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    minimumSize: const Size.fromHeight(45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => {myStore.login(textController.text)},
                  child: const Text("Log In",
                      style: TextStyle(fontSize: 15, color: Colors.black))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Forgot your password?",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
