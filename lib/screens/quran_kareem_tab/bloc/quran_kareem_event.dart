part of 'quran_kareem_bloc.dart';

@freezed
class QuranKareemEvent with _$QuranKareemEvent {
  factory QuranKareemEvent.showHideHelpBar(bool status) = _ShowHideHelpBar;
  factory QuranKareemEvent.updatePageCount(int pageCount) = _UpdatePageCount;
  factory QuranKareemEvent.updateSorahReferanceNumber(int num) =
      _UpdateSorahReferanceNumber;
  factory QuranKareemEvent.updateJozo2ReferanceNumber(int num) =
      _UpdateJozo2ReferanceNumber;
  factory QuranKareemEvent.updateSidePage(PageSide side) = _UpdateSidePage;
  factory QuranKareemEvent.updateBookMarkedPages(List<int> list) =
      _UpdateBookMarkedPages;
  factory QuranKareemEvent.updateScreenBrigtness(double value) =
      _UpdateScreenBrigtness;
  factory QuranKareemEvent.updateRewardedAd(RewardedAd? value) =
      _UpdateRewardedAd;
  factory QuranKareemEvent.updateReadPDFFile(String value) = _UpdateReadPDFFile;
}
