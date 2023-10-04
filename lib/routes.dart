import 'package:flutter/material.dart';
import 'package:tradly_app/core/models/product_model.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/verify_screen.dart';
import 'package:tradly_app/features/onboarding_screen/presentation/views/onBoardviews.dart';
import 'package:tradly_app/features/products/presentation/view/product_detailes_feature/presentation/views/product_detail_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/add_product_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/created_store_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/create_store_screen.dart';
import 'package:tradly_app/features/wish_list/view/wishList.dart';
import 'features/auth_feature/presentation/views/login_screen.dart';
import 'features/auth_feature/presentation/views/signup_screen.dart';
import 'features/home_feature/presentation/views/home_screen.dart';
import 'features/onboarding_screen/presentation/views/splash_screen.dart';
import 'features/store_feature/presentation/views/store_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings, BuildContext context) {
  switch (settings.name) {
//----- OnBoarding Routing -----
    case OnBoardingView.routeName:
      return onBoardingRoute();

//----- Main Routing -----
    case '/':
      return homeRoute();

//----- Auth Routing -----
    case SignUpScreen.routeName:
      return signUpRoute();
    case LoginScreen.routeName:
      return loginRoute();

//----- Verify Routing -----
    case VerifyView.routeName:
      final List<dynamic> args = settings.arguments as List<dynamic>;
      final int verifyId = args[0] as int;
      final User user = args[1] as User;
      return verifyRoute(verifyId, user);

//----- Home Routing -----
    case HomeScreen.routeName:
      return homeRoute();
    case ProductDetailsScreen.routeName:
      final ProductModel args = settings.arguments as ProductModel;
      return productDetailRoute(args);
    case WishList.routeName:
      return wishListRoute();
//----- Store Routing -----
    case StoreScreen.routeName:
      return storeScreen();
    case CreateStoreScreen.routeName:
      return createStoreScreen();
    case CreatedStoreScreen.routeName:
      return createdStoreScreen();
    case AddProductScreen.routeName:
      return addProductScreen();

    /// the productDetailScreen not have a logic yet now !!!!
    // case ProductDetailsScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) =>  ProductDetailsScreen(model: ,),
    //   );

    default:
      return notFound();
  }
}

MaterialPageRoute<dynamic> notFound() {
  return MaterialPageRoute(
    builder: (context) => const Scaffold(
      body: Scaffold(
        body: Text('This Page not found'),
      ),
    ),
  );
}

MaterialPageRoute<dynamic> onBoardingRoute() {
  return MaterialPageRoute(
    builder: (context) => const OnBoardingView(),
  );
}

MaterialPageRoute<dynamic> splashRoute() {
  return MaterialPageRoute(
    builder: (context) => const SplashScreen(),
  );
}

MaterialPageRoute<dynamic> signUpRoute() {
  return MaterialPageRoute(
    builder: (context) => const SignUpScreen(),
  );
}

MaterialPageRoute<dynamic> loginRoute() {
  return MaterialPageRoute(
    builder: (context) => const LoginScreen(),
  );
}

MaterialPageRoute<dynamic> homeRoute() {
  return MaterialPageRoute(
    builder: (context) => const HomeScreen(),
  );
}

MaterialPageRoute<dynamic> wishListRoute() {
  return MaterialPageRoute(
    builder: (context) => const WishList(),
  );
}

MaterialPageRoute<dynamic> verifyRoute(int verifyId, User user) {
  return MaterialPageRoute(
    builder: (context) => VerifyView(
      verifyId: verifyId,
      user: user,
    ),
  );
}

MaterialPageRoute<dynamic> storeScreen() {
  return MaterialPageRoute(
    builder: (context) => const StoreScreen(),
  );
}

MaterialPageRoute<dynamic> createStoreScreen() {
  return MaterialPageRoute(
    builder: (context) => const CreateStoreScreen(),
  );
}

MaterialPageRoute<dynamic> createdStoreScreen() {
  return MaterialPageRoute(
    builder: (context) => const CreatedStoreScreen(),
  );
}

MaterialPageRoute<dynamic> addProductScreen() {
  return MaterialPageRoute(
    builder: (context) => const AddProductScreen(),
  );
}

MaterialPageRoute<ProductModel> productDetailRoute(ProductModel model) {
  return MaterialPageRoute(
    builder: (context) => ProductDetailsScreen(model: model),
  );
}
