part of '../router.dart';

List<GoRoute> _crudRoutes(Ref ref) {
  return [
    GoRoute(
      path: Routes.productHome,
      name: Routes.productHome,
      builder: (context, state) => const ProductHomeView(),
      routes: [
        GoRoute(
          path: Routes.addProduct,
          name: Routes.addProduct,
          builder: (context, state) => const AddProductView(),
        ),
        GoRoute(
          path: Routes.editProduct,
          name: Routes.editProduct,
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            final product = state.extra as Map<String, String>;
            return EditProductView(product: product, id: id);
          },
        ),
      ],
    ),
  ];
}
