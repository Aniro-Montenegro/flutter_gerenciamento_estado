import 'package:flutter/material.dart';
import 'package:provider_flutter/models/client.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;
  Clients({required this.clients});

  void addClient(Client client) {
    clients.add(client);
    notifyListeners();
  }

  void removeClient(int index) {
    clients.removeAt(index);
    notifyListeners();
  }
}
