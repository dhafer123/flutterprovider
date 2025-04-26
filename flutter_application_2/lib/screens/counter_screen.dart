import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart'; 

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter Example'),
      ),
      body: Center(
        child: Text(
          'Counter: ${counterProvider.count}',
          style: const TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              counterProvider.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            backgroundColor: Colors.red,
            onPressed: () {
              counterProvider.reset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
