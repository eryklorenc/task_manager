import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/features/planned/cubit/planned_cubit.dart';
import 'package:task_manager/generated/l10n.dart';

class PlannedPage extends StatelessWidget {
  const PlannedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).planned_tasks,
          style: Theme.of(context).xTextTheme.body1,
        ),
      ),
      body: BlocProvider(
        create: (context) => PlannedCubit()..loadDocuments(),
        child: BlocBuilder<PlannedCubit, PlannedState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.errorMessage.isNotEmpty) {
              return Center(child: Text(S.of(context).error));
            }
            final item = state.items;
            if (item.isEmpty) {
              return Center(child: Text(S.of(context).no_tasks));
            }
            return ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                final taskData = item[index];
                final String name = taskData.name;
                final String description = taskData.description;
                if ((name.isEmpty) && (description.isEmpty)) {
                  return Container();
                }
                return ContainerSS(
                  margin: const EdgeInsetsSS.symmetric(horizontal: 5, vertical: 0.3),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: AppColors.main,
                      width: 1,
                    ),
                  ),
                  child: ListTile(
                    title: name.isNotEmpty
                        ? Text(
                            name,
                            style: Theme.of(context).xTextTheme.body2,
                          )
                        : null,
                    subtitle: description.isNotEmpty
                        ? Text(
                            description,
                            style: Theme.of(context).xTextTheme.body2,
                          )
                        : null,
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: AppColors.main,
                      ),
                      onPressed: () {
                        context.read<PlannedCubit>().deleteDocument(item[index].id);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
