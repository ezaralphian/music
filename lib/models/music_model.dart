class MusicResult {
  MusicResult({
    this.resultCount,
    required this.results,
  });

  int? resultCount;
  List<Music> results;

  factory MusicResult.fromJson(Map<String, dynamic> json) => MusicResult(
        resultCount: json["resultCount"],
        results:
            List<Music>.from(json["results"].map((x) => Music.fromJson(x))),
      );
}

class Music {
  Music({
    this.wrapperType,
    this.kind,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.collectionArtistId,
    this.collectionArtistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.trackRentalPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackHdRentalPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.contentAdvisoryRating,
    this.longDescription,
    this.hasITunesExtras,
    this.artistId,
    this.artistViewUrl,
    this.discCount,
    this.discNumber,
    this.isStreamable,
    this.description,
    this.collectionArtistName,
    this.shortDescription,
    this.amgArtistId,
    this.copyright,
    this.feedUrl,
    this.artworkUrl600,
    this.genreIds,
    this.genres,
  });

  WrapperType? wrapperType;
  Kind? kind;
  int? collectionId;
  int? trackId;
  String? artistName;
  String? collectionName;
  String? trackName;
  String? collectionCensoredName;
  String? trackCensoredName;
  int? collectionArtistId;
  String? collectionArtistViewUrl;
  String? collectionViewUrl;
  String? trackViewUrl;
  String? previewUrl;
  String? artworkUrl30;
  String? artworkUrl60;
  String? artworkUrl100;
  double? collectionPrice;
  double? trackPrice;
  double? trackRentalPrice;
  double? collectionHdPrice;
  double? trackHdPrice;
  double? trackHdRentalPrice;
  DateTime? releaseDate;
  Explicitness? collectionExplicitness;
  Explicitness? trackExplicitness;
  int? trackCount;
  int? trackNumber;
  int? trackTimeMillis;
  Country? country;
  Currency? currency;
  String? primaryGenreName;
  String? contentAdvisoryRating;
  String? longDescription;
  bool? hasITunesExtras;
  int? artistId;
  String? artistViewUrl;
  int? discCount;
  int? discNumber;
  bool? isStreamable;
  String? description;
  String? collectionArtistName;
  String? shortDescription;
  int? amgArtistId;
  String? copyright;
  String? feedUrl;
  String? artworkUrl600;
  List<String>? genreIds;
  List<String>? genres;

  factory Music.fromJson(Map<String, dynamic> json) => Music(
        wrapperType: wrapperTypeValues.map[json["wrapperType"]],
        kind: json["kind"] == null ? null : kindValues.map[json["kind"]],
        collectionId:
            json["collectionId"] == null ? null : json["collectionId"],
        trackId: json["trackId"] == null ? null : json["trackId"],
        artistName: json["artistName"],
        collectionName:
            json["collectionName"] == null ? null : json["collectionName"],
        trackName: json["trackName"] == null ? null : json["trackName"],
        collectionCensoredName: json["collectionCensoredName"] == null
            ? null
            : json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"] == null
            ? null
            : json["trackCensoredName"],
        collectionArtistId: json["collectionArtistId"] == null
            ? null
            : json["collectionArtistId"],
        collectionArtistViewUrl: json["collectionArtistViewUrl"] == null
            ? null
            : json["collectionArtistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"] == null
            ? null
            : json["collectionViewUrl"],
        trackViewUrl:
            json["trackViewUrl"] == null ? null : json["trackViewUrl"],
        previewUrl: json["previewUrl"] == null ? null : json["previewUrl"],
        artworkUrl30:
            json["artworkUrl30"] == null ? null : json["artworkUrl30"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionPrice: json["collectionPrice"].toDouble(),
        trackPrice:
            json["trackPrice"] == null ? null : json["trackPrice"].toDouble(),
        trackRentalPrice: json["trackRentalPrice"] == null
            ? null
            : json["trackRentalPrice"].toDouble(),
        collectionHdPrice: json["collectionHdPrice"] == null
            ? null
            : json["collectionHdPrice"].toDouble(),
        trackHdPrice: json["trackHdPrice"] == null
            ? null
            : json["trackHdPrice"].toDouble(),
        trackHdRentalPrice: json["trackHdRentalPrice"] == null
            ? null
            : json["trackHdRentalPrice"].toDouble(),
        releaseDate: DateTime.parse(json["releaseDate"]),
        collectionExplicitness:
            explicitnessValues.map[json["collectionExplicitness"]],
        trackExplicitness: json["trackExplicitness"] == null
            ? null
            : explicitnessValues.map[json["trackExplicitness"]],
        trackCount: json["trackCount"] == null ? null : json["trackCount"],
        trackNumber: json["trackNumber"] == null ? null : json["trackNumber"],
        trackTimeMillis:
            json["trackTimeMillis"] == null ? null : json["trackTimeMillis"],
        country: countryValues.map[json["country"]],
        currency: currencyValues.map[json["currency"]],
        primaryGenreName: json["primaryGenreName"],
        contentAdvisoryRating: json["contentAdvisoryRating"] == null
            ? null
            : json["contentAdvisoryRating"],
        longDescription:
            json["longDescription"] == null ? null : json["longDescription"],
        hasITunesExtras:
            json["hasITunesExtras"] == null ? null : json["hasITunesExtras"],
        artistId: json["artistId"] == null ? null : json["artistId"],
        artistViewUrl:
            json["artistViewUrl"] == null ? null : json["artistViewUrl"],
        discCount: json["discCount"] == null ? null : json["discCount"],
        discNumber: json["discNumber"] == null ? null : json["discNumber"],
        isStreamable:
            json["isStreamable"] == null ? null : json["isStreamable"],
        description: json["description"] == null ? null : json["description"],
        collectionArtistName: json["collectionArtistName"] == null
            ? null
            : json["collectionArtistName"],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        amgArtistId: json["amgArtistId"] == null ? null : json["amgArtistId"],
        copyright: json["copyright"] == null ? null : json["copyright"],
        feedUrl: json["feedUrl"] == null ? null : json["feedUrl"],
        artworkUrl600:
            json["artworkUrl600"] == null ? null : json["artworkUrl600"],
        genreIds: json["genreIds"] == null
            ? null
            : List<String>.from(json["genreIds"].map((x) => x)),
        genres: json["genres"] == null
            ? null
            : List<String>.from(json["genres"].map((x) => x)),
      );
}

enum Explicitness { NOT_EXPLICIT, EXPLICIT, CLEANED }

final explicitnessValues = EnumValues({
  "cleaned": Explicitness.CLEANED,
  "explicit": Explicitness.EXPLICIT,
  "notExplicit": Explicitness.NOT_EXPLICIT
});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

enum Currency { USD }

final currencyValues = EnumValues({"USD": Currency.USD});

enum Kind { FEATURE_MOVIE, SONG, PODCAST }

final kindValues = EnumValues({
  "feature-movie": Kind.FEATURE_MOVIE,
  "podcast": Kind.PODCAST,
  "song": Kind.SONG
});

enum WrapperType { TRACK, AUDIOBOOK }

final wrapperTypeValues = EnumValues(
    {"audiobook": WrapperType.AUDIOBOOK, "track": WrapperType.TRACK});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
