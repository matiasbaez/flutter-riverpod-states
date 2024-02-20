
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/random_name_provider.dart';

class StateProviderScreen extends ConsumerWidget {

  const StateProviderScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final textStyle = Theme.of(context).textTheme;
    final randomName = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),

      body: Center(
        child: Text(randomName, style: textStyle.titleMedium),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.refresh_rounded ),
        onPressed: () {
          // This recreate the provider
          ref.invalidate(randomNameProvider);
        },
      ),
    );
  }
}
