import 'package:mobx/mobx.dart';

part 'coach_profile_store.g.dart';

class CoachProfileStore = _CoachProfileStore with _$CoachProfileStore;

abstract class _CoachProfileStore with Store {
  @observable
  int selectedTabIndex = 0;

  @observable
  int selectedSportIndex = 0;

  @observable
  int selectedCoachingTypeIndex = 0;

  @observable
  DateTime selectedDate = DateTime.now();

  @observable
  int selectedTimeIndex = 0;

  @observable
  int numberOfPeople = 6;

  @observable
  int selectedLevelIndex = 0;

  @observable
  int selectedLocationIndex = 0;

  /// GROUP SESSION
  @observable
  bool joinedGroupSession = false;

  // ---------- ACTIONS ----------
  @action
  void changeTab(int index) => selectedTabIndex = index;

  @action
  void changeSport(int index) => selectedSportIndex = index;

  @action
  void changeCoachingType(int index) => selectedCoachingTypeIndex = index;

  @action
  void updateDate(DateTime date) => selectedDate = date;

  @action
  void changeTime(int index) => selectedTimeIndex = index;

  @action
  void setPeople(int value) => numberOfPeople = value;

  @action
  void incrementPeople() {
    if (numberOfPeople < 10) numberOfPeople++;
  }

  @action
  void decrementPeople() {
    if (numberOfPeople > 1) numberOfPeople--;
  }

  @action
  void changeLevel(int index) => selectedLevelIndex = index;

  @action
  void changeLocation(int index) => selectedLocationIndex = index;

  @action
  void toggleJoinGroup() {
    joinedGroupSession = !joinedGroupSession;
  }
}
