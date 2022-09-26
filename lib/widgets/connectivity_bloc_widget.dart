import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../connectivity_bloc/connectivity_bloc.dart';

class CheckConnectivity extends StatelessWidget {
  final Widget child;
  const CheckConnectivity({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
          if (state is ConnectedState) {
            return child;
          } else if (state is DisconnectedState) {
            return Container(
              child: Center(
                child: Text('No Connection'),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
