import 'package:flutter_image_search_app_ver1/data/model/image_item.dart';

class MainState {
  final List<ImageItem> imageItem;

  final bool isLoading;

//<editor-fold desc="Data Methods">
  const MainState({
    required this.imageItem,
    required this.isLoading,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MainState &&
          runtimeType == other.runtimeType &&
          imageItem == other.imageItem &&
          isLoading == other.isLoading);

  @override
  int get hashCode => imageItem.hashCode ^ isLoading.hashCode;

  @override
  String toString() {
    return 'MainState{ imageItem: $imageItem, isLoading: $isLoading,}';
  }

  MainState copyWith({
    List<ImageItem>? imageItem,
    bool? isLoading,
  }) {
    return MainState(
      imageItem: imageItem ?? this.imageItem,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageItem': imageItem,
      'isLoading': isLoading,
    };
  }

  factory MainState.fromMap(Map<String, dynamic> map) {
    return MainState(
      imageItem: map['imageItem'] as List<ImageItem>,
      isLoading: map['isLoading'] as bool,
    );
  }

//</editor-fold>
}
