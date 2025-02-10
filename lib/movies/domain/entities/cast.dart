part of './../../../core/helpers/export_manager/export_manager.dart';

class Cast extends Equatable {
  const Cast({
    required this.name,
    required this.profileUrl,
    required this.gender,
  });
  final String name;
  final String profileUrl;
  final int gender;

  @override
  List<Object?> get props => [
        name,
        profileUrl,
        gender,
      ];
}
