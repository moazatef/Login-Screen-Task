enum Routes {
  splash('/'),
  login('/login'),
  register('/register');

  const Routes(this.path);
  final String path;
}
