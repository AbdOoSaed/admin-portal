import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:invoiceninja_flutter/constants.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/redux/company/company_selectors.dart';
import 'package:invoiceninja_flutter/ui/app/app_builder.dart';
import 'package:invoiceninja_flutter/ui/app/main_screen.dart';
import 'package:invoiceninja_flutter/ui/app/screen_imports.dart';
import 'package:invoiceninja_flutter/ui/auth/init_screen.dart';
import 'package:invoiceninja_flutter/ui/auth/lock_screen.dart';
import 'package:invoiceninja_flutter/ui/auth/login_vm.dart';
import 'package:invoiceninja_flutter/ui/company_gateway/company_gateway_screen.dart';
import 'package:invoiceninja_flutter/ui/company_gateway/company_gateway_screen_vm.dart';
import 'package:invoiceninja_flutter/ui/company_gateway/edit/company_gateway_edit_vm.dart';
import 'package:invoiceninja_flutter/ui/company_gateway/view/company_gateway_view_vm.dart';
import 'package:invoiceninja_flutter/ui/credit/credit_screen.dart';
import 'package:invoiceninja_flutter/ui/credit/credit_screen_vm.dart';
import 'package:invoiceninja_flutter/ui/credit/edit/credit_edit_vm.dart';
import 'package:invoiceninja_flutter/ui/credit/view/credit_view_vm.dart';
import 'package:invoiceninja_flutter/ui/design/design_screen.dart';
import 'package:invoiceninja_flutter/ui/design/design_screen_vm.dart';
import 'package:invoiceninja_flutter/ui/design/edit/design_edit_vm.dart';
import 'package:invoiceninja_flutter/ui/design/view/design_view_vm.dart';
import 'package:invoiceninja_flutter/ui/payment/refund/payment_refund_vm.dart';
import 'package:invoiceninja_flutter/ui/reports/reports_screen.dart';
import 'package:invoiceninja_flutter/ui/reports/reports_screen_vm.dart';
import 'package:invoiceninja_flutter/ui/settings/account_management_vm.dart';
import 'package:invoiceninja_flutter/ui/settings/settings_screen_vm.dart';
import 'package:invoiceninja_flutter/ui/settings/tax_settings_vm.dart';
import 'package:invoiceninja_flutter/ui/tax_rate/edit/tax_rate_edit_vm.dart';
import 'package:invoiceninja_flutter/ui/tax_rate/tax_rate_screen.dart';
import 'package:invoiceninja_flutter/ui/tax_rate/view/tax_rate_view_vm.dart';
import 'package:invoiceninja_flutter/ui/user/edit/user_edit_vm.dart';
import 'package:invoiceninja_flutter/ui/user/user_screen.dart';
import 'package:invoiceninja_flutter/ui/user/view/user_view_vm.dart';
import 'package:invoiceninja_flutter/utils/colors.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';
import 'package:invoiceninja_flutter/utils/platforms.dart';
import 'package:local_auth/local_auth.dart';
import 'package:redux/redux.dart';
// STARTER: import - do not remove comment

class InvoiceNinjaApp extends StatefulWidget {
  const InvoiceNinjaApp({Key key, this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  InvoiceNinjaAppState createState() => InvoiceNinjaAppState();
}

class InvoiceNinjaAppState extends State<InvoiceNinjaApp> {
  bool _authenticated = false;

  Future<Null> _authenticate() async {
    bool authenticated = false;

    try {
      authenticated = await LocalAuthentication().authenticateWithBiometrics(
          localizedReason: 'Please authenticate to access the app',
          useErrorDialogs: true,
          stickyAuth: false);
    } catch (e) {
      print(e);
    }

    if (authenticated) {
      setState(() => _authenticated = true);
    }
  }

  /*
  @override
  void initState() {
    super.initState();

    const QuickActions quickActions = QuickActions();
    quickActions.initialize((String shortcutType) {
      if (shortcutType == 'action_new_client') {
        widget.store
            .dispatch(EditClient(context: context, client: ClientEntity()));
      }
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'action_new_client',
          localizedTitle: 'New Client',
          icon: 'AppIcon'),
    ]);
  }
  */

  @override
  void didChangeDependencies() {
    final state = widget.store.state;
    if (state.prefState.requireAuthentication && !_authenticated) {
      _authenticate();
    }
    super.didChangeDependencies();
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    /*
    print('## generateRoute: ${settings.name}, isInitial: ${settings.isInitialRoute}');
    print('## pathname: ${html5.window.location.pathname} hash: ${html5.window.location.hash}, href: ${html5.window.location.href}');
    html5.window.history.replaceState(null, settings.name, '/#${settings.name}');
    widget.store.dispatch(UpdateCurrentRoute(settings.name));
    */
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute<dynamic>(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute<dynamic>(builder: (_) => MainScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: AppBuilder(builder: (context) {
        final store = widget.store;
        final state = store.state;
        final accentColor = convertHexStringToColor(state.accentColor) ??
            Colors.lightBlueAccent;
        final fontFamily = kIsWeb ? 'Roboto' : null;
        final pageTransitionsTheme = PageTransitionsTheme(builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        });
        Intl.defaultLocale = localeSelector(state);

        return MaterialApp(
          supportedLocales: kLanguages
              .map((String locale) => AppLocalization.createLocale(locale))
              .toList(),
          //debugShowCheckedModeBanner: false,
          //showPerformanceOverlay: true,
          localizationsDelegates: [
            const AppLocalizationsDelegate(),
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate
          ],
          home: state.prefState.requireAuthentication && !_authenticated
              ? LockScreen(onAuthenticatePressed: _authenticate)
              : InitScreen(),
          locale: AppLocalization.createLocale(localeSelector(state)),
          theme: state.prefState.enableDarkMode
              ? ThemeData(
                  pageTransitionsTheme: pageTransitionsTheme,
                  brightness: Brightness.dark,
                  accentColor: accentColor,
                  textSelectionHandleColor: accentColor,
                  fontFamily: fontFamily,
                  backgroundColor: Colors.black,
                  canvasColor: Colors.black,
                  cardColor: const Color(0xFF1B1C1E),
                  bottomAppBarColor: const Color(0xFF1B1C1E),
                  primaryColorDark: Colors.black,
                )
              : ThemeData(fontFamily: fontFamily).copyWith(
                  pageTransitionsTheme: pageTransitionsTheme,
                  accentColor: accentColor,
                  textSelectionColor: accentColor,
                  primaryColor: const Color(0xFF117cc1),
                  primaryColorLight: const Color(0xFF5dabf4),
                  primaryColorDark: const Color(0xFF0D5D91),
                  buttonColor: const Color(0xFF0D5D91),
                  indicatorColor: Colors.white,
                  backgroundColor: const Color(0xFFFAFAFA),
                  cardColor: Colors.white,
                  canvasColor: const Color(0xFFFAFAFA),
                  bottomAppBarColor: const Color(0xFFFAFAFA),
                  //bottomAppBarColor: Colors.grey.shade300,
                  //backgroundColor: Colors.grey.shade200,
                ),
          title: 'Invoice Ninja',
          onGenerateRoute: isMobile(context) ? null : generateRoute,
          routes: isMobile(context)
              ? {
                  LoginScreen.route: (context) => LoginScreen(),
                  MainScreen.route: (context) => MainScreen(),
                  DashboardScreenBuilder.route: (context) =>
                      DashboardScreenBuilder(),
                  ProductScreen.route: (context) => ProductScreenBuilder(),
                  ProductViewScreen.route: (context) => ProductViewScreen(),
                  ProductEditScreen.route: (context) => ProductEditScreen(),
                  ClientScreen.route: (context) => ClientScreenBuilder(),
                  ClientViewScreen.route: (context) => ClientViewScreen(),
                  ClientEditScreen.route: (context) => ClientEditScreen(),
                  InvoiceScreen.route: (context) => InvoiceScreenBuilder(),
                  InvoiceViewScreen.route: (context) => InvoiceViewScreen(),
                  InvoiceEditScreen.route: (context) => InvoiceEditScreen(),
                  InvoiceEmailScreen.route: (context) => InvoiceEmailScreen(),
                  DocumentScreen.route: (context) => DocumentScreenBuilder(),
                  DocumentViewScreen.route: (context) => DocumentViewScreen(),
                  DocumentEditScreen.route: (context) => DocumentEditScreen(),
                  ExpenseScreen.route: (context) => ExpenseScreenBuilder(),
                  ExpenseViewScreen.route: (context) => ExpenseViewScreen(),
                  ExpenseEditScreen.route: (context) => ExpenseEditScreen(),
                  VendorScreen.route: (context) => VendorScreenBuilder(),
                  VendorViewScreen.route: (context) => VendorViewScreen(),
                  VendorEditScreen.route: (context) => VendorEditScreen(),
                  TaskScreen.route: (context) => TaskScreenBuilder(),
                  TaskViewScreen.route: (context) => TaskViewScreen(),
                  TaskEditScreen.route: (context) => TaskEditScreen(),
                  ProjectScreen.route: (context) => ProjectScreenBuilder(),
                  ProjectViewScreen.route: (context) => ProjectViewScreen(),
                  ProjectEditScreen.route: (context) => ProjectEditScreen(),
                  PaymentScreen.route: (context) => PaymentScreenBuilder(),
                  PaymentViewScreen.route: (context) => PaymentViewScreen(),
                  PaymentEditScreen.route: (context) => PaymentEditScreen(),
                  PaymentRefundScreen.route: (context) => PaymentRefundScreen(),
                  QuoteScreen.route: (context) => QuoteScreenBuilder(),
                  QuoteViewScreen.route: (context) => QuoteViewScreen(),
                  QuoteEditScreen.route: (context) => QuoteEditScreen(),
                  QuoteEmailScreen.route: (context) => QuoteEmailScreen(),
                  // STARTER: routes - do not remove comment
                  DesignScreen.route: (context) => DesignScreenBuilder(),
                  DesignViewScreen.route: (context) => DesignViewScreen(),
                  DesignEditScreen.route: (context) => DesignEditScreen(),
                  CreditScreen.route: (context) => CreditScreenBuilder(),
                  CreditViewScreen.route: (context) => CreditViewScreen(),
                  CreditEditScreen.route: (context) => CreditEditScreen(),
                  UserScreen.route: (context) => UserScreenBuilder(),
                  UserViewScreen.route: (context) => UserViewScreen(),
                  UserEditScreen.route: (context) => UserEditScreen(),
                  GroupSettingsScreen.route: (context) => GroupScreenBuilder(),
                  GroupViewScreen.route: (context) => GroupViewScreen(),
                  GroupEditScreen.route: (context) => GroupEditScreen(),
                  SettingsScreen.route: (context) => SettingsScreenBuilder(),
                  ReportsScreen.route: (context) => ReportsScreenBuilder(),
                  CompanyDetailsScreen.route: (context) =>
                      CompanyDetailsScreen(),
                  UserDetailsScreen.route: (context) => UserDetailsScreen(),
                  LocalizationScreen.route: (context) => LocalizationScreen(),
                  CompanyGatewayScreen.route: (context) =>
                      CompanyGatewayScreenBuilder(),
                  CompanyGatewayViewScreen.route: (context) =>
                      CompanyGatewayViewScreen(),
                  CompanyGatewayEditScreen.route: (context) =>
                      CompanyGatewayEditScreen(),
                  TaxSettingsScreen.route: (context) => TaxSettingsScreen(),
                  TaxRateSettingsScreen.route: (context) =>
                      TaxRateScreenBuilder(),
                  TaxRateViewScreen.route: (context) => TaxRateViewScreen(),
                  TaxRateEditScreen.route: (context) => TaxRateEditScreen(),
                  ProductSettingsScreen.route: (context) =>
                      ProductSettingsScreen(),
                  IntegrationSettingsScreen.route: (context) =>
                      IntegrationSettingsScreen(),
                  ImportExportScreen.route: (context) => ImportExportScreen(),
                  DeviceSettingsScreen.route: (context) =>
                      DeviceSettingsScreen(),
                  AccountManagementScreen.route: (context) =>
                      AccountManagementScreen(),
                  CustomFieldsScreen.route: (context) => CustomFieldsScreen(),
                  GeneratedNumbersScreen.route: (context) =>
                      GeneratedNumbersScreen(),
                  WorkflowSettingsScreen.route: (context) =>
                      WorkflowSettingsScreen(),
                  InvoiceDesignScreen.route: (context) => InvoiceDesignScreen(),
                  ClientPortalScreen.route: (context) => ClientPortalScreen(),
                  BuyNowButtonsScreen.route: (context) => BuyNowButtonsScreen(),
                  EmailSettingsScreen.route: (context) => EmailSettingsScreen(),
                  TemplatesAndRemindersScreen.route: (context) =>
                      TemplatesAndRemindersScreen(),
                  CreditCardsAndBanksScreen.route: (context) =>
                      CreditCardsAndBanksScreen(),
                  DataVisualizationsScreen.route: (context) =>
                      DataVisualizationsScreen(),
                }
              : {},
        );
      }),
    );
  }
}
