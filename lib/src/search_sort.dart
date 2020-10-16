enum SearchSort {
  Name,
  BasePackage,
  Votes,
  Popularity,
  Maintainer,
  FirstSubmitted,
  LastModified,
}

SearchSort toSearchSort(String sort) => {
  'name': SearchSort.Name,
  'base-package': SearchSort.BasePackage,
  'votes': SearchSort.Votes,
  'popularity': SearchSort.Popularity,
  'maintainer': SearchSort.Maintainer,
  'first-submitted': SearchSort.FirstSubmitted,
  'last-modified': SearchSort.LastModified,
}[sort] ?? SearchSort.Name;
