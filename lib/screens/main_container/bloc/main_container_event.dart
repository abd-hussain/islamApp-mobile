part of 'main_container_bloc.dart';

@freezed
class MainContainerEvent with _$MainContainerEvent {
  factory MainContainerEvent.changeSelectedIndex(SelectedTab tab) =
      _ChangeSelectedIndex;
}
