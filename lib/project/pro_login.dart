// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ProLogin extends StatelessWidget {
  const ProLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// body中可以重新定义theme的一些内容
      // body: ThemeDemo(),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextFieldDemo(),
              RegisterFrom()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterFrom extends StatefulWidget {
  const RegisterFrom({Key? key}) : super(key: key);

  @override
  _RegisterFromState createState() => _RegisterFromState();
}

class _RegisterFromState extends State<RegisterFrom> {
  final registerFormKey = GlobalKey<FormState>();
  late String username;
  late String password;
  bool autovalidate = false;

  /// - 表单提交
  void submmitRegisterForm() {
    if (registerFormKey.currentState!.validate()) {
      /// 保存 -
      registerFormKey.currentState!.save();

      /// 验证 -
      debugPrint("username:$username");
      debugPrint("password:$password");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        "Register successfull !",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      )));
      Navigator.of(context).pop();
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  /// - 表单验证
  String? validateUsername(value) {
    if (value.isEmpty) {
      return "User name is required";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value.isEmpty) {
      return "User name is required";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "User Name", helperText: ""),
            onSaved: (newValue) {
              username = newValue!;
            },
            validator: validateUsername,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Pass Word", helperText: ""),
            onSaved: (newValue) {
              password = newValue!;
            },
            validator: validatePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.blue,
            ),
            width: double.infinity,
            child: TextButton(
              onPressed: submmitRegisterForm,
              child: Text(
                "login",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = "haha";
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint("input:$value");
      // },
      onSubmitted: (value) {
        debugPrint("input:$value");
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: "Title",
          hintText: "Enter the post title",
          border: OutlineInputBorder()),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
