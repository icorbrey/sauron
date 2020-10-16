import 'package:args/command_runner.dart' show Command;
import 'package:sauron/src/search_mechanism.dart' show searchForPackages;
import 'package:sauron/src/search_property.dart' show toSearchProperty;
import 'package:sauron/src/search_sort.dart' show toSearchSort;

class SearchCommand extends Command {
  @override final name = 'search';
  @override final description = 'Search for packages on the AUR';

  final Map<String, Map<String, String>> options = {
    'searchBy': {
      'name': 'Search by package name only.',
      'name-desc': 'Search by package name and description.',
      'maintainer': 'Search by package maintainer.',
      'depends': 'Search for packages that depend on keywords.',
      'makedepends': 'Search for packages that makedepend on keywords.',
      'optdepends': 'Search for packages that optdepend on keywords.',
      'checkdepends': 'Search for packages that checkdepend on keywords.',
    },
    'sortBy': {
      'name': 'Sort results by name.',
      'base-package': 'Sort results by base package name.',
      'votes': 'Sort results by vote.',
      'popularity': 'Sort results by popularity.',
      'maintainer': 'Sort results by maintainer.',
      'first-submitted': 'Sort results by first submission date.',
      'last-modified': 'Sort results by last modification date.',
    }
  };

  SearchCommand() {
    argParser.addOption('by',
      abbr: 'b',
      help: 'Specify how to search for packages. Defaults to "name-desc".',
      allowedHelp: options['searchBy']
    );

    argParser.addOption('sort',
      abbr: 's',
      help: 'Specify how to sort packages. Defaults to "name".',
      allowedHelp: options['sortBy']
    );
  }

  @override void run() {
    if (argResults.rest.isNotEmpty) {
      searchForPackages(
        property: toSearchProperty(argResults['by']),
        sort: toSearchSort(argResults['sort']),
        query: argResults.rest[0],
      );
    }
    else {
      printUsage();
    }
  }
}
