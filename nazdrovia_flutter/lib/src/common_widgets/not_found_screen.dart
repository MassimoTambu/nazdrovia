import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nazdrovia_flutter/src/common_widgets/primary_button_widget.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                context.tr.pageNotFound,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              PrimaryButtonWidget(
                onPressed: () => context.pop(),
                text: context.tr.goBack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
