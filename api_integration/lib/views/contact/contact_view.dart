import 'package:api_integration/app/app.router.dart';
import 'package:api_integration/views/contact/contact_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactViewModel>.reactive(
        viewModelBuilder: () => ContactViewModel(),
        builder: (context, viewmodel, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text("Contact Page"),
              ),
              body: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          viewmodel.navigationService.navigateToHomeView();
                        },
                        child: Text("Navigate to Home")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewmodel.navigationService.navigateToAboutView();
                        },
                        child: Text("Navigate to About"))
                  ],
                ),
              ),
            ));
  }
}
