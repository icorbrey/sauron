enum SearchProperty {
  Name,
  NameDescription,
  Maintainer,
  Depends,
  MakeDepends,
  OptDepends,
  CheckDepends,
}

SearchProperty toSearchProperty(String property) => {
  'name': SearchProperty.Name,
  'name-desc': SearchProperty.NameDescription,
  'maintainer': SearchProperty.Maintainer,
  'depends': SearchProperty.Depends,
  'makedepends': SearchProperty.MakeDepends,
  'optdepends': SearchProperty.OptDepends,
  'checkdepends': SearchProperty.CheckDepends,
}[property] ?? SearchProperty.NameDescription;
