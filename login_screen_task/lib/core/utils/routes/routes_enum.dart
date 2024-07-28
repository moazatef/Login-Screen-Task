enum Routes {
  splash('/splash'),
  login('/'),
  register('/register');

  const Routes(this.path);
  final String path;
}
