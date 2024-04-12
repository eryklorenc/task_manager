// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:task_manager/data/datasources/location/location_datasources.dart'
    as _i7;
import 'package:task_manager/domain/repositories/location_repository.dart'
    as _i8;
import 'package:task_manager/features/add_task/cubit/add_task_cubit.dart'
    as _i3;
import 'package:task_manager/features/create_task/cubit/create_task_cubit.dart'
    as _i4;
import 'package:task_manager/features/done/cubit/done_cubit.dart' as _i5;
import 'package:task_manager/features/in_progress/cubit/in_progress_cubit.dart'
    as _i6;
import 'package:task_manager/features/planned/cubit/planned_cubit.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AddTaskCubit>(() => _i3.AddTaskCubit());
    gh.factory<_i4.CreateTaskCubit>(() => _i4.CreateTaskCubit());
    gh.factory<_i5.DoneCubit>(() => _i5.DoneCubit());
    gh.factory<_i6.InProgressCubit>(() => _i6.InProgressCubit());
    gh.factory<_i7.LocationDataSource>(() => _i7.LocationDataSource());
    gh.factory<_i8.LocationRepository>(
        () => _i8.LocationRepository(gh<_i7.LocationDataSource>()));
    gh.factory<_i9.PlannedCubit>(
        () => _i9.PlannedCubit(gh<_i8.LocationRepository>()));
    return this;
  }
}
