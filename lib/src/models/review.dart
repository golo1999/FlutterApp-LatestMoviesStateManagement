part of models;

abstract class Review implements Built<Review, ReviewBuilder> {
  factory Review({
    required String id,
    required String uid,
    required int movieId,
    required String text,
    DateTime? createdAt,
  }) {
    return _$Review((ReviewBuilder builder) {
      builder
        ..id = id
        ..uid = uid
        ..movieId = movieId
        ..text = text
        ..createdAt = createdAt ?? DateTime.now();
    });
  }

  factory Review.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Review._();

  String get id;

  String get uid;

  int get movieId;

  String get text;

  DateTime get createdAt;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Review> get serializer => _$reviewSerializer;
}
