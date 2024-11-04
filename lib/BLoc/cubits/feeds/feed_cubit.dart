import 'package:bloc_social_app/BLoc/cubits/feeds/feed_states.dart';
import 'package:bloc_social_app/domain/feed_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedCubit extends Cubit<FeedStates> {
  final FeedRepo feedRepo;

  FeedCubit({required this.feedRepo}) : super(FeedsInitial());
}
