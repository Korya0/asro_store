import 'dart:async';
import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env_varible.dart';
import 'package:asroo_store/core/common/views/no_network_view.dart';
import 'package:asroo_store/core/routes/app_router.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvType.dev);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then(
    (value) =>
        runApp(DevicePreview(builder: (context) => const AsroStoreApp())),
  );
}

class AsroStoreApp extends StatelessWidget {
  const AsroStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,

      builder: (_, value, _) {
        if (value) {
          return MaterialApp.router(
            title: 'Asroo Store',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: themeDark(),
            builder: (context, child) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    unawaited(ConnectivityController.instance.init());
                    return child!;
                  },
                ),
              );
            },
            routerConfig: AppRouter.router,
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetworkView(),
          );
        }
      },
    );
  }
}
