import 'package:flutter/material.dart';
import 'package:provider_flutter/models/client.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;
  Clients({required this.clients});
}
