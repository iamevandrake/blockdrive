part of 'fs_entry_info_cubit.dart';

abstract class FsEntryInfoState extends Equatable {
  const FsEntryInfoState();

  @override
  List<Object?> get props => [];
}

class FsEntryInfoInitial extends FsEntryInfoState {}

class FsEntryInfoSuccess<T> extends FsEntryInfoState {
  final String? name;
  final DateTime? lastUpdated;
  final DateTime? dateCreated;
  final T? entry;

  FsEntryInfoSuccess(
      {this.name, this.lastUpdated, this.dateCreated, this.entry});

  @override
  List<Object?> get props => [name, lastUpdated, dateCreated];
}

class FsEntryInfoFailure extends FsEntryInfoState {}
