import 'dart:async';

import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env_varible.dart';
import 'package:asroo_store/core/common/views/no_network_view.dart';
import 'package:asroo_store/core/style/font/font_family_helper.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
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
          return MaterialApp(
            title: 'Asroo Store',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
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
            home: const Scaffold(
              body: Center(
                child: Column(
                  spacing: 50,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //// Old Font
                    Text(
                      'Asroo Store',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'محمود محمد',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    //// New Font
                    Text(
                      'Asroo Store',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: FontFamilyHelper.cairoArabic,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    ),
                    Text(
                      'محمود محمد',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: FontFamilyHelper.cairoArabic,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
