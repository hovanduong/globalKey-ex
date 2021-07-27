import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalkey_ex/presentation/base/basewidget.dart';
import 'package:globalkey_ex/presentation/login/login_viewmodel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewmodel>(
      viewModel: LoginViewmodel(),
      onViewModelReady: (viewModel) => viewModel.initDa(),
      builder: (context, viewModel, child) => body(context, viewModel),
    );
  }

  Widget body(BuildContext context, LoginViewmodel viewmodel) {
    return Scaffold(
      body: _bodySingin(viewmodel),
    );
  }

  Widget _bodySingin(LoginViewmodel viewmodel) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: viewmodel.formStateKey, // gán key cho Form
                child: Column(
                  children: [
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: 'Vui lòng nhập tên',
                        labelText: 'Tên',
                      ),
                      validator: viewmodel.validName(),
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: 'Vui lòng nhập đúng tuổi',
                        labelText: 'Tuổi',
                      ),
                      validator: viewmodel.valiedAge(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // ignore: deprecated_member_use
              FlatButton(
                child: const Text('Submit'),
                color: Colors.pink,
                onPressed: () {
                  if (viewmodel.formStateKey.currentState!.validate()) {
                    print('Thanh cong');
                  } else {
                    print('That bai');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
