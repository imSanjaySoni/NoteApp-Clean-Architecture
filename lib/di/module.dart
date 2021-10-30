import 'package:injectable/injectable.dart';
import 'package:note_app/presentation/routes/routes.dart';

@module
abstract class RegisterCoreDependencies {
  final AppRouter appRouter = AppRouter();
}
