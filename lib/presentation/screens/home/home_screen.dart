
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),

      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {

  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [

        _CustomListTile(
          title: 'State Provider',
          subtitle: 'A simple state',
          location: '/state-provider',
        ),

        _CustomListTile(
          title: 'Future Provider',
          subtitle: 'A simple future + family',
          location: '/future-provider',
        ),

        _CustomListTile(
          title: 'Stream Provider',
          subtitle: 'A simple stream',
          location: '/stream-provider',
        ),

        _CustomListTile(
          title: 'State Notifier Provider',
          subtitle: 'A provider with custom state',
          location: '/state-notifier-provider',
        ),

      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final String location;

  const _CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.location
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () => context.push(location),
      trailing: const Icon( Icons.arrow_forward_ios_rounded ),
    );
  }
}
