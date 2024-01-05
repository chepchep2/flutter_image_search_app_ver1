import 'package:flutter/material.dart';
import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';
import 'package:flutter_image_search_app_ver1/data/repository/image_repository.dart';
import 'package:flutter_image_search_app_ver1/ui/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final ImageRepository _repository;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel({
    required ImageRepository repository,
  }) : _repository = repository;

  Future<void> searchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final results = (await _repository.getImageItems(query)).toList();

    _state = state.copyWith(
      isLoading: false,
      imageItem:
          List.unmodifiable((await _repository.getImageItems(query)).toList()),
    );
    notifyListeners();
  }
}
