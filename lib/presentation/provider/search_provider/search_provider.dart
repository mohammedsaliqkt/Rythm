import 'package:rhthemix/data/data_source/get_local_audio_files_impl.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';
@riverpod
class Search extends _$Search {
  @override
  List<SongModel> build() {
    return [];
  }
  void songsearch({required String search}) {
    List<SongModel> data = ref.watch(getLocalAudioProvider).value!;
    if (search.isNotEmpty) {
      RegExp regExp = RegExp(search, caseSensitive: false);
      state = [
        for (SongModel model in data)
          if (regExp.hasMatch(model.title)) model
      ];
    } else {
      state = [];
    }
  }
}






