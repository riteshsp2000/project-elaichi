import 'package:elaichi/auth/domain/repository/auth_repository.dart';
import 'package:elaichi/auth/presentation/sign_in_view.dart';
import 'package:elaichi/home/home.dart';
import 'package:go_router/go_router.dart';

/// Handles the routing and navigation of the app.
class AppRouter {
  /// Stores all the routes of the app.
  final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          final authenticationRepository = AuthenticationRepository();
          return SignInPage(authenticationRepository: authenticationRepository);
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          final authenticationRepository = AuthenticationRepository();
          return HomePage(
            authenticationRepository: authenticationRepository,
          );
        },
      ),
    ],
  );
}
