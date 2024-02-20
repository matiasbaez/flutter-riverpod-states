
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';


final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonNameProvider = FutureProvider.autoDispose<String>((ref) async {
  final pokemonId = ref.watch(pokemonIdProvider); // Recommend to use watch inside the provider
  return await PokemonService.getPokemonName(pokemonId);
});

// final pokemonNameProvider = FutureProvider.family.autoDispose<String, int>((ref, pokemonId) async {
//   return await PokemonService.getPokemonName(pokemonId);
// });