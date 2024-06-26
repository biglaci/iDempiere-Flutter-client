// Copyright (c) 2023, devCoffee Business Solutions. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import '../idempiere_rest/model_base.dart';

/// Class that abstracts the response of [IdempiereClient.getRoles]
class user extends ModelBase {
//  late String name;
   Map<String, dynamic> _json_po={};
  int _po_id=0;
   bool get hasJson => _json_po != null;

  user(Map<String, dynamic> json) : super(json) {
    id = json['id'];
    _po_id= json['id'];
    //name = json['name'];
    _json_po=json;
  }

  int get po_id => _po_id;

  Map<String, dynamic> get json_po => _json_po;


  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  @override
  ModelBase fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }
}
class Lead {
  Lead({
    required this.id,
    required this.Value,
    required this.Name,
    required this.Phone,
  });

  final String id;
  final String Value;
  final String Phone;
  final String Name;

  factory Lead.fromJson(Map<String, dynamic> json) => Lead(
    id: json["id"],
    Name: json["Name"],
    Value: json["Value"],
    Phone: json["Phone"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Name": Name,
    "Value": Value,
    "Phone": Phone,
  };
}