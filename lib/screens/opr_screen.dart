import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:power_she_pre/components/card.dart';
import 'package:power_she_pre/constants.dart';

class OprScreen extends StatefulWidget {
  static const String id = "opr_screen";
  const OprScreen({super.key});

  @override
  State<OprScreen> createState() => _OprScreenState();
}

class _OprScreenState extends State<OprScreen> {
  // Query dbRef = FirebaseDatabase.instance.ref().child('');
  CollectionReference _referenceOprList = FirebaseFirestore.instance.collection('opportunities'); 
  late Stream <QuerySnapshot> _streamOprList;
  initState(){
    super.initState();
    _streamOprList = _referenceOprList.snapshots();
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _streamOprList,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasError){
          return Center(child: Text(snapshot.error.toString()));
        }
        if(snapshot.connectionState==ConnectionState.active){
          QuerySnapshot querySnapshot = snapshot.data;
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
