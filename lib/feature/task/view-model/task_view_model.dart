import 'package:mobx/mobx.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  @computed
  bool get isOdd => counter.isOdd;

  @observable
  int counter = 0;

  @action
  void incrementCounter() {
    counter++;
  }
}
