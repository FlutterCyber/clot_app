import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/bottom_nav_bar.dart';
import 'package:clot_app/features/auth/sign_up/sign_up.dart';
import 'package:clot_app/features/cart/cart_main.dart';
import 'package:clot_app/features/cart/cart_page.dart';
import 'package:clot_app/features/cart/checkout_page.dart';
import 'package:clot_app/features/cart/message_page.dart';
import 'package:clot_app/features/home/products_categories_page.dart';
import 'package:clot_app/features/home/shop_categories_page.dart';
import 'package:clot_app/features/into/splash_page.dart';
import 'package:clot_app/features/auth/sign_up/about.dart';
import 'package:clot_app/features/auth/sign_in/reset_page.dart';
import 'package:clot_app/features/auth/sign_in/send_email.dart';
import 'package:clot_app/features/auth/sign_in/sign_in_email.dart';
import 'package:clot_app/features/order/order_details_page.dart';
import 'package:clot_app/features/order/orders.dart';
import 'package:clot_app/features/profile/add_address.dart';
import 'package:clot_app/features/profile/add_card_page.dart';
import 'package:clot_app/features/profile/address_edit.dart';
import 'package:clot_app/features/profile/payment_page.dart';
import 'package:clot_app/features/profile/wishlist.dart';
import 'package:clot_app/features/search_page/main_search_page.dart';
import 'package:flutter/material.dart';
import '../../features/auth/sign_in/sing_in_password.dart';
import '../../features/product/product_page.dart';
import '../../features/search_page/if_found.dart';
import '../../features/search_page/if_not_found.dart';
import '../../features/search_page/search_page_controller.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.resetPage:
        return MaterialPageRoute(builder: (_) => const ResetPage());
      case RouteNames.sendEmailPage:
        return MaterialPageRoute(builder: (_) => const SendEmail());
      case RouteNames.logInAbout:
        return MaterialPageRoute(builder: (_) => const LogInAbout());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.shopCategories:
        return MaterialPageRoute(builder: (_) => const ShopCategories());
      case RouteNames.productsCategories:
        String category = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => ProductsCategories(
                  category: category,
                ));
      case RouteNames.addressEdit:
        return MaterialPageRoute(builder: (_) => const AddressEdit());
      case RouteNames.addAddress:
        return MaterialPageRoute(builder: (_) => const AddAddress());
      case RouteNames.paymentPage:
        return MaterialPageRoute(builder: (_) => const PaymentPage());
      case RouteNames.addCard:
        return MaterialPageRoute(builder: (_) => const AddCardPage());
      case RouteNames.wishlist:
        return MaterialPageRoute(builder: (_) => const Wishlist());
      case RouteNames.orders:
        return MaterialPageRoute(builder: (_) => const Orders());
      case RouteNames.ordersDetails:
        return MaterialPageRoute(builder: (_) => const OrderDetails());
      case RouteNames.searchPageMain:
        return MaterialPageRoute(builder: (_) => const SearchPageMain());
      case RouteNames.ifNotFound:
        return MaterialPageRoute(builder: (_) => const IfNotFound());
      case RouteNames.ifFound:
        return MaterialPageRoute(builder: (_) => const IfFound());
      case RouteNames.mainSearchPage:
        return MaterialPageRoute(builder: (_) => const MainSearchPage());
      case RouteNames.cartMain:
        return MaterialPageRoute(builder: (_) => const CartMain());
      case RouteNames.cartPage:
        return MaterialPageRoute(builder: (_) => const CartPage());
      case RouteNames.checkoutPage:
        return MaterialPageRoute(builder: (_) => const CheckoutPage());
      case RouteNames.messagePage:
        return MaterialPageRoute(builder: (_) => const MessagePage());
      case RouteNames.productPage:
        return MaterialPageRoute(builder: (_) => const ProductPage());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
