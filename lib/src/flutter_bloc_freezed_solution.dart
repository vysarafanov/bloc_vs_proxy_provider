import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';
import 'welcome_page.dart';
import '~auth/auth_bloc.dart';
import '~name/name_widget.dart';

class FlutterBlocFreezedSolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state.when(
        unauthenticated: () => WelcomeScreen(),
        authenticated: (user) => HomeScreen(
          nameWidget: NameWidgetFlutterBlocFreezed(),
        ),
      ),
    );
  }
}
