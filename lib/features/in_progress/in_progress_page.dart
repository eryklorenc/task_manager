import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/features/in_progress/cubit/in_progress_cubit.dart';
import 'package:task_manager/generated/l10n.dart';

class InProgressPage extends StatelessWidget {
  const InProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).in_progress_tasks,
          style: Theme.of(context).xTextTheme.body1,
        ),
      ),
      body: BlocProvider(
        create: (context) => InProgressCubit()..loadDocuments(),
        child: BlocBuilder<InProgressCubit, InProgressState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.errorMessage.isNotEmpty) {
              return Center(child: Text(S.of(context).error));
            }
            final documents = state.documents;
            if (documents!.isEmpty) {
              return Center(child: Text(S.of(context).no_tasks));
            }
            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                final taskData = documents[index].data() as Map<String, dynamic>;
                final String? name = taskData['Name'];
                final String? description = taskData['Description'];
                if ((name == null || name.isEmpty) && (description == null || description.isEmpty)) {
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
                    title: name != null && name.isNotEmpty
                        ? Text(
                            name,
                            style: Theme.of(context).xTextTheme.body2,
                          )
                        : null,
                    subtitle: description != null && description.isNotEmpty
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
                        context.read<InProgressCubit>().deleteDocument(documents[index].id);
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
