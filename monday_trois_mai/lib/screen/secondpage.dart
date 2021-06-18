import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:monday_trois_mai/apiSimulator/simulator.dart';
import 'package:monday_trois_mai/model/model.dart';

class ApiCall extends StatefulWidget {
  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  List<UserModel> userData = [];

  ApiModelTester api = ApiModelTester();

  @override
  void initState() {
    userData = api.getUserModel(fake: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messenger"), 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: userData.length,
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
                thickness: 0.0,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text(
                            userData[index].name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(userData[index].message),
                        ),
                      ],
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
