import 'package:flutter/material.dart';
import 'package:provider_flutter/models/client_type.dart';

class Types extends ChangeNotifier {
  List<ClientType> types;
  Types({required this.types});

  void addClientType(ClientType clientType) {
    types.add(clientType);
    notifyListeners();
  }

  void removeClientType(int index) {
    types.removeAt(index);
    notifyListeners();
  }
}
