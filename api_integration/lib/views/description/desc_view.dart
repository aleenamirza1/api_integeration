import 'package:api_integration/views/description/desc_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DescView extends StatelessWidget {
  const DescView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DescViewModel>.reactive(
      viewModelBuilder: () => DescViewModel(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: Text("${viewmodel.user}"),
        ),
        body: Column(
          children: [
            Text("${viewmodel.user}"),
            ElevatedButton(
                onPressed: () {
                  viewmodel.getUserById();
                },
                child: Text("get user"))
          ],
        ),
      ),
    );
  }
}
