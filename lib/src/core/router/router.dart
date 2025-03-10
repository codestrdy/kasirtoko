import 'package:go_router/go_router.dart';
import 'package:kasirtoko/src/features/product/presentation/pages/product_page.dart';

enum COSRoutes {
  product('/product');

  final String route;

  const COSRoutes(this.route);
}

final goRouterConfig = GoRouter(
  initialLocation: COSRoutes.product.route,
  debugLogDiagnostics: true,
  routes: [GoRoute(path: COSRoutes.product.route, builder: (context, state) => ProductPage())],
);
