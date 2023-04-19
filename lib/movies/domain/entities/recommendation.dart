import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  final int id;
  final String? imagePath;

  const Recommendation({required this.id, required this.imagePath});

  @override
  List<Object?> get props => [id, imagePath];
}
