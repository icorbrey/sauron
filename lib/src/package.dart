import 'package:sauron/src/search_sort.dart';

class Package {
  Package({
    this.id,
    this.name,
    this.packageBaseId,
    this.packageBase,
    this.version,
    this.description,
    this.url,
    this.votes,
    this.popularity,
    this.outOfDate,
    this.maintainer,
    this.firstSubmitted,
    this.lastModified,
    this.urlPath,
    this.depends,
    this.makeDepends,
    this.license,
    this.keywords,
  });

  final int id;
  final String name;
  final int packageBaseId;
  final String packageBase;
  final String version;
  final String description;
  final String url;
  final int votes;
  final double popularity;
  final String outOfDate;
  final String maintainer;
  final DateTime firstSubmitted;
  final DateTime lastModified;
  final String urlPath;
  final List<String> depends;
  final List<String> makeDepends;
  final List<String> license;
  final List<String> keywords;
}

int Function(Package a, Package b) getPackageSorter(SearchSort sort) => {
  SearchSort.Name:           (Package a, Package b) => a.name.compareTo(b.name),
  SearchSort.BasePackage:    (Package a, Package b) => a.packageBase.compareTo(b.packageBase),
  SearchSort.Votes:          (Package a, Package b) => a.votes.compareTo(b.votes),
  SearchSort.Popularity:     (Package a, Package b) => a.popularity.compareTo(b.popularity),
  SearchSort.Maintainer:     (Package a, Package b) => a.maintainer.compareTo(b.maintainer),
  SearchSort.FirstSubmitted: (Package a, Package b) => a.firstSubmitted.compareTo(b.firstSubmitted),
  SearchSort.LastModified:   (Package a, Package b) => a.lastModified.compareTo(b.lastModified),
}[sort];
