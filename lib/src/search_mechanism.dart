import 'package:sauron/src/package.dart' show Package, getPackageSorter;
import 'package:sauron/src/search_property.dart' show SearchProperty;
import 'package:sauron/src/search_sort.dart' show SearchSort;

void searchForPackages({ SearchProperty property, SearchSort sort, String query }) {
  var packages = <Package>[];

  packages.sort(getPackageSorter(sort));
  for (var package in packages) {
    print(package.name);
  }
}
