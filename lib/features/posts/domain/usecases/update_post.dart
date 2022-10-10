import 'package:dartz/dartz.dart';
import 'package:posts_app_flutter/features/posts/domain/entites/post.dart';
import '../../../../core/error/failures.dart';
import './../../../../features/posts/domain/repositires/posts_repository.dart';

class UpdatePostsUsecase {
  final PostRepository repository;
  UpdatePostsUsecase(this.repository);

  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.updatePost(post);
  }
}
