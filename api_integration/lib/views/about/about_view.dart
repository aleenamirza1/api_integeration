import 'package:api_integration/app/app.router.dart';
import 'package:api_integration/views/about/about_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.reactive(
        viewModelBuilder: () => AboutViewModel(),
        builder: (context, viewmodel, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text("About Page"),
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
                          viewmodel.navigationService.navigateToContactView();
                        },
                        child: Text("Navigate to Contact"))
                  ],
                ),
              ),
            ));
  }
}
