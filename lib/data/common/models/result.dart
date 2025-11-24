abstract class Result<T, E> {
  const Result();

  bool get isSuccess => this is Success<T, E>;
  bool get isFailure => this is Failure<T, E>;

  T get success => (this as Success<T, E>).data;
  E get failure => (this as Failure<T, E>).error;

  factory Result.success(T data) = Success<T, E>;
  factory Result.failure(E error) = Failure<T, E>;
}

class Success<T, E> extends Result<T, E> {
  final T data;
  const Success(this.data) : super();
}

class Failure<T, E> extends Result<T, E> {
  final E error;
  const Failure(this.error) : super();
}
