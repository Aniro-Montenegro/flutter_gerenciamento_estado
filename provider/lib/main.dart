import 'package:flutter/material.dart';
import 'package:provider_flutter/models/client.dart';
import 'package:provider_flutter/models/client_type.dart';
import 'package:provider_flutter/models/clients_provider.dart';
import 'package:provider_flutter/pages/client_types_page.dart';
import 'pages/clients_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => Clients(clients: [
                  Client(
                    name: 'Geraldo',
                    email: 'leo@email.com',
                    type: ClientType(
                      name: 'Platinum',
                      icon: Icons.credit_card,
                    ),
                  ),
                ])),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientTypesPage(title: 'Tipos de cliente'),
      },
    );
  }
}
