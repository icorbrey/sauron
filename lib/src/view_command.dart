import 'package:args/command_runner.dart' show Command;

class ViewCommand extends Command {
  @override final name = 'view';
  @override final description = 'View a package\'s details.';

  @override void run() {
    printUsage();
  }
}
