import 'dart:io' show exit;
import 'package:args/command_runner.dart' show CommandRunner, UsageException;
import 'package:sauron/src/search_command.dart' show SearchCommand;
import 'package:sauron/src/view_command.dart' show ViewCommand;

void runCommands(List<String> args) {
  var runner = CommandRunner(
    'sauron',
    'Searches the AUR for packages.'
  );

  runner.addCommand(SearchCommand());
  runner.addCommand(ViewCommand());

  runner.run(args).catchError((error) {
    if (error is! UsageException) {
      throw error;
    }

    print(error);
    exit(64);
  });
}
