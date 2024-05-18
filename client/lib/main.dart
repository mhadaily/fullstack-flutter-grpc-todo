import 'package:flutter/material.dart';
import 'package:protos/protos.dart';

void main() {
  final rpcClientChannel = ClientChannel(
    '10.0.2.2', // android emulator if not localhost()
    port: 8091,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = TodoServiceClient(rpcClientChannel);

  runApp(MainApp(
    stub: stub,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.stub});

  final TodoServiceClient stub;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // read
            stub.read(TodoByIdRequest()..id = 1).then(
              (value) {
                debugPrint(value.toString());
              },
            );

            //create
            stub
                .create(
              Todo()
                ..title = 'Title'
                ..description = 'Description'
                ..done = false
                ..labels.addAll(['Label']),
            )
                .then(
              (value) {
                debugPrint(value.toString());
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: StreamBuilder(
              stream: stub.listTodosStream(Empty()),
              builder: (ctx, snapshot) {
                if (snapshot.hasData) {
                  final todo = snapshot.data;
                  if (todo == null) {
                    return const Center(
                      child: Text('No data'),
                    );
                  }
                  return ListTile(
                    title: Text(todo.title),
                    subtitle: Text(todo.description),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
