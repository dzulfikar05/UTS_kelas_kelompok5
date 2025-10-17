import 'package:go_router/go_router.dart';
import 'pages/gallery_page.dart';
import 'pages/detail_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'gallery',
      builder: (context, state) => const GalleryPage(),
    ),
    GoRoute(
      path: '/detail/:index',
      name: 'detail',
      builder: (context, state) {
        final index = int.parse(state.pathParameters['index']!);
        return DetailPage(index: index);
      },
    ),
  ],
);
