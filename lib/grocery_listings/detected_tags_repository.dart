class DetectedTagsRepository {
  static final DetectedTagsRepository _singleton = DetectedTagsRepository._internal();
  List<String> _tags = [];
  DetectedTagsRepository._internal();
  static DetectedTagsRepository get instance => _singleton;
  List<String> get tags => _tags;
  set tags(List<String> newTags) {
    _tags = newTags;
  }
}
