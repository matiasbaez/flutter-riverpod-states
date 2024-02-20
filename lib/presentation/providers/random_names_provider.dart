
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {

  // Just work if the stream returns a String
  await for ( final name in RandomGenerator.getRandomNamesStream() ) {
    yield name;
  }

});