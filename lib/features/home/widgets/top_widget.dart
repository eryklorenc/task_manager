import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/generated/l10n.dart';

Widget buildTopWidget(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      color: AppColors.main,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsetsSS.only(left: 1),
            child: Builder(
              builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsSS.only(bottom: 1),
                      child: Text(
                        S.of(context).welcome,
                        style: Theme.of(context).xTextTheme.display0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsSS.symmetric(vertical: 1),
                      child: Text(
                        S.of(context).ready,
                        style: Theme.of(context).xTextTheme.display1,
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsetsSS.only(bottom: 1.78, top: 1),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 60,
                            child: Icon(
                              Icons.person,
                              size: 100,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsSS.only(left: 5.5, bottom: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).action,
                                style: Theme.of(context).xTextTheme.body4,
                              ),
                              const SizedBox(height: 5),
                              ContainerSS(
                                width: 62,
                                child: Text(
                                  S.of(context).assistant,
                                  style: Theme.of(context).xTextTheme.body3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
