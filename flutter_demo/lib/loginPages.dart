import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatelessWidget {
  loginPage({Key? key}) : super(key: key);
  var _formKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Login"),
              TextFormField(
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Please input your username";
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Username"),
                    hintText: "Username",
                    icon: Icon(Icons.person),
                  )),
              TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Please input your username";
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Password",
                    icon: Icon(Icons.person),
                  )),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    var username = usernameController.text;
                    var password = "12345678";

                    if (authentication(username, password)) {}
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("please review your date"),
                      ),
                    );
                  }
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }

  authentication(String username, String password) {
    if (username == 'namphan021101' && password == '12345678') return true;
    return false;
  }
}
