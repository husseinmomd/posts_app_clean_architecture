import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entites/post.dart';
import './../../../../features/posts/domain/repositires/posts_repository.dart';

class GetAllPostsUsecase {
  final PostRepository repository;
  GetAllPostsUsecase(this.repository);

  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}
