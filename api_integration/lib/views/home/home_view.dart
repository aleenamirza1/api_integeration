import 'package:api_integration/app/app.router.dart';
import 'package:api_integration/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text("Home Page"),
              ),
              body: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        viewmodel.navigationService.navigateToAboutView();
                      },
                      child: Text("Navigate to About")),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewmodel.navigationService.navigateToContactView();
                      },
                      child: Text("Navigate to Contact")),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewmodel.getUsers();
                      },
                      child: Text("Get Users Data")),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: viewmodel.users.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              viewmodel
                                  .selectUser(viewmodel.users[index]['id']);
                              viewmodel.navigationService.navigateToDescView();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all()),
                              child: ListTile(
                                leading: Icon(Icons.person),
                                trailing:
                                    Text("${viewmodel.users[index]['id']}"),
                                title:
                                    Text("${viewmodel.users[index]['name']}"),
                                subtitle:
                                    Text("${viewmodel.users[index]['email']}"),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ));
  }
}
