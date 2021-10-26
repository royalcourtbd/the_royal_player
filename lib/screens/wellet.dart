

import 'package:flutter/material.dart';
import 'package:the_royal_player/models/match_details_model.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final _formKey = GlobalKey<FormState>();
  //MatchDetail matchDetail = MatchDetail();

  void savedProduct() {
    //
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //   child: Form(
        //     child: ListView(
        //       children: [
        //         TextFormField(
        //           keyboardType: TextInputType.text,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Game Name'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.matchName = value!;
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.datetime,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Date Time'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.matchName = value!;
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Wining Prize'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.winingPrize = int.parse(value!);
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Per Kill'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.killAmount = int.parse(value!);
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Per Kill'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.killAmount = int.parse(value!);
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.text,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Entry Fee'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.entryFee = int.parse(value!);
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.text,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Version'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.matchVersion = value!;
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TextFormField(
        //           keyboardType: TextInputType.text,
        //           decoration: InputDecoration(
        //               border: OutlineInputBorder(), labelText: 'Map'),
        //           validator: (value) {
        //             if (value!.isEmpty) {
        //               return 'Please Inpurt a valid name';
        //             }
        //             return null;
        //           },
        //           onSaved: (value) {
        //             matchDetail.map = value!;
        //           },
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         Center(
        //           child: Column(
        //             children: [
        //               CircleAvatar(),
        //               SizedBox(
        //                 height: 10,
        //               ),
        //               ElevatedButton(onPressed: () {}, child: Text('Click'))
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         ElevatedButton(
        //           onPressed: savedProduct,
        //           child: Text('Saved Products'),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    ));
  }
}
