import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

Future<String> getDatabasePath() async {
  final directory = await getApplicationDocumentsDirectory();
  return join(directory.path, 'my_database.db');
}
