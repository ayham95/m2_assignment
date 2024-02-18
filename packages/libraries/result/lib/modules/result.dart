sealed class Result<V, E extends Exception> {
  bool get isValueResult => this is ValueResult<V, E>;

  bool get isErrorResult => this is ErrorResult<V, E>;

  V get value => fold<V>(
        (value) => value,
        (error) => throw Exception('Illegal use. Result is actually an error'),
      );

  E get error => fold<E>(
        (value) => throw Exception('Illegal use. Result is actually a value'),
        (error) => error,
      );

  T fold<T>(
    T Function(V value) valueCallback,
    T Function(E error) errorCallback,
  );
}

class ValueResult<V, E extends Exception> extends Result<V, E> {
  @override
  final V value;

  ValueResult(this.value);

  @override
  T fold<T>(
    T Function(V value) valueCallback,
    T Function(E error) errorCallback,
  ) {
    return valueCallback(value);
  }
}

class ErrorResult<V, E extends Exception> extends Result<V, E> {
  @override
  final E error;

  ErrorResult(this.error);

  @override
  T fold<T>(
    T Function(V value) valueCallback,
    T Function(E error) errorCallback,
  ) {
    return errorCallback(error);
  }
}
