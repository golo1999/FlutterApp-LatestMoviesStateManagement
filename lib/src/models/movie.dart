part of models;

abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder b) updates]) = _$Movie;

  factory Movie.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Movie._();

  static const num maxRating = 10;

  int get id;

  String get url;

  @BuiltValueField(wireName: 'imdb_code')
  String get imdbCode;

  String get title;

  @BuiltValueField(wireName: 'title_english')
  String get titleEnglish;

  @BuiltValueField(wireName: 'title_long')
  String get titleLong;

  String get slug;

  int get year;

  num get rating;

  int get runtime;

  BuiltList<String> get genres;

  String get summary;

  @BuiltValueField(wireName: 'description_full')
  String get descriptionFull;

  String get synopsis;

  @BuiltValueField(wireName: 'yt_trailer_code')
  String get ytTrailerCode;

  String get language;

  @BuiltValueField(wireName: 'mpa_rating')
  String get mpaRating;

  @BuiltValueField(wireName: 'background_image')
  String get backgroundImage;

  @BuiltValueField(wireName: 'background_image_original')
  String get backgroundImageOriginal;

  @BuiltValueField(wireName: 'small_cover_image')
  String get smallCoverImage;

  @BuiltValueField(wireName: 'medium_cover_image')
  String get mediumCoverImage;

  @BuiltValueField(wireName: 'large_cover_image')
  String get largeCoverImage;

  String get state;

  BuiltList<Torrent> get torrents;

  @BuiltValueField(wireName: 'date_uploaded')
  String get dateUploaded;

  @BuiltValueField(wireName: 'date_uploaded_unix')
  int get dateUploadedUnix;

  dynamic showGenres() {
    final int numberOfGenres = genres.length;
    dynamic genresListed = '';

    for (int genreIndex = 0; genreIndex < numberOfGenres; ++genreIndex) {
      genresListed += genres[genreIndex];

      if (genreIndex < numberOfGenres - 1) {
        genresListed += ' / ';
      }
    }

    return genresListed;
  }

  String showAvailableQualities() {
    final int numberOfAvailableQualities = torrents.length;
    String availableQualitiesListed = '';
    final BuiltList<Torrent> torrentList = torrents;

    for (int qualityIndex = 0; qualityIndex < numberOfAvailableQualities; ++qualityIndex) {
      final Torrent torrent = torrentList[qualityIndex];
      final String torrentQuality = torrent.quality;
      final String torrentType = torrent.type == 'bluray'
          ? 'BluRay'
          : torrent.type == 'web'
              ? 'Web'
              : '';

      availableQualitiesListed += torrentQuality.toString() + '.' + torrentType;

      if (qualityIndex < numberOfAvailableQualities - 1) {
        availableQualitiesListed += ' / ';
      }
    }

    return numberOfAvailableQualities > 0 ? ('Available in: ' + availableQualitiesListed) : availableQualitiesListed;
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Movie> get serializer => _$movieSerializer;
}
