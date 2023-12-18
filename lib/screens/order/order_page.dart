import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../idempiere_rest/po.dart';
import '../../utilities/leads.dart';
import '../../utilities/po_list.dart';
import '../../view_models/main_view_models.dart';
import '../../utilities/lw_lead.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
  });

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends  State<OrderPage>  {
  final HomeViewModel homeViewModel = HomeViewModel();


    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Json Parsing Demo'),
        ),
        body: ChangeNotifierProvider<leads>(
          create: (context) => leads(),
          child: Consumer<leads>(
            builder: (context, provider, child) {
              if (provider.data == null) {
                provider.getData(context);
                return Center(child: CircularProgressIndicator());
              }
              // when we have the json loaded... let's put the data into a data table widget
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: [
                      DataColumn(
                          label: Text('Verified'),
                          tooltip: 'represents if user is verified.'),
                      DataColumn(
                          label: Text('First Name'),
                          tooltip: 'represents first name of the user'),
                      DataColumn(
                          label: Text('Last Name'),
                          tooltip: 'represents last name of the user'),
                      DataColumn(
                          label: Text('Email'),
                          tooltip: 'represents email address of the user'),
                      DataColumn(
                          label: Text('Phone'),
                          tooltip: 'represents phone number of the user'),
                    ],
                    rows: provider.data!.records!
                        .map((data) =>
                    // we return a DataRow every time
                    DataRow(
                      // List<DataCell> cells is required in every row
                        cells: [
                          DataCell((data.isActive??true)
                              ? Icon(
                            Icons.verified_user,
                            color: Colors.green,
                          )
                              : Icon(Icons.cancel, color: Colors.red)),
                          // I want to display a green color icon when user is verified and red when unverified
                          DataCell(Text(data.name??'')),
                          DataCell(Text(data.value??'')),
                          DataCell(Text(data.eMail??'')),
                          DataCell(Text(data.phone??'')),
                        ]))
                        .toList(),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

  @override
  // TODO: implement restorationId
  String? get restorationId => throw UnimplementedError();


}




