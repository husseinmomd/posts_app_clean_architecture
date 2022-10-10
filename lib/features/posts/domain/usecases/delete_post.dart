import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import './../../../../features/posts/domain/repositires/posts_repository.dart';

class DeletePostsUsecase {
  final PostRepository repository;
  DeletePostsUsecase(this.repository);

  Future<Either<Failure, Unit>> call(int postId) async {
    return await repository.deletePost(postId);
  }
}
