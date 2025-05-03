import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/login/login_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_remote_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/splash_screen_page.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/pages/main_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
          ),
          home: MainPage()),
    );
  }
}
