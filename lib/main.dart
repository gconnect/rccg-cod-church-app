import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/auth/auth_bloc.dart';
import 'package:rccg_cod/authentication/auth/auth_repository_impl.dart';
import 'package:rccg_cod/authentication/login/login_cubit.dart';
import 'package:rccg_cod/authentication/signup/signup_cubit.dart';
import 'package:rccg_cod/splashscreen.dart';
import 'AppBlocObserver.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
          BlocProvider(
          create: (context) => AuthBloc(AuthRepositoryImpl())..add(AuthStarted())
          ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const Splashscreen(),
      ),
    );
  }
}

// class AppView extends StatelessWidget {
//   /// {@macro app_view}
//   const AppView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeCubit, ThemeData>(
//       builder: (_, theme) {
//         return MaterialApp(
//           theme: theme,
//           home: const Splashscreen(),
//         );
//       },
//     );
//   }
// }

// class CounterPage extends StatelessWidget {
//   /// {@macro counter_page}
//   const CounterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterBloc(),
//       child: const CounterView(),
//     );
//   }
// }

// class CounterView extends StatelessWidget {
//   /// {@macro counter_view}
//   const CounterView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter')),
//       body: Center(
//         child: BlocBuilder<CounterBloc, int>(
//           builder: (context, count) {
//             return Text(
//               '$count',
//               style: Theme.of(context).textTheme.displayLarge,
//             );
//           },
//         ),
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             child: const Icon(Icons.add),
//             onPressed: () {
//               context.read<CounterBloc>().add(CounterIncrementPressed());
//             },
//           ),
//           const SizedBox(height: 4),
//           FloatingActionButton(
//             child: const Icon(Icons.remove),
//             onPressed: () {
//               context.read<CounterBloc>().add(CounterDecrementPressed());
//             },
//           ),
//           const SizedBox(height: 4),
//           FloatingActionButton(
//             child: const Icon(Icons.brightness_6),
//             onPressed: () {
//               context.read<ThemeCubit>().toggleTheme();
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }



