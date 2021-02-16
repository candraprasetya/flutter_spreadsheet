import 'package:flutter/material.dart';
import 'package:flutter_spreadsheet/controller.dart';
import 'package:flutter_spreadsheet/models/feedback_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void submitForm() {
    if (formKey.currentState.validate()) {
      FeedbackModel feedbackModel =
          FeedbackModel(nameController.text, emailController.text);
      Controller controller = Controller((String response) {
        print(response);
        if (response == Controller.STATUS_SUCCESS) {
          showSnackBar('Feedback Submitted');
        } else {
          showSnackBar('Error Occured!');
        }
      });
      showSnackBar('Submitting Feedback');
      controller.submitForm(feedbackModel);
    }
  }

  showSnackBar(String message) {
    final snackbar = SnackBar(content: Text(message));
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter valid name';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: 'Name'),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter valid email';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.send_outlined),
                  label: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 21),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    submitForm();
                    setState(() {
                      formKey.currentState.reset();
                    });
                  },
                )
              ],
            ),
          )),
    );
  }
}
