abstract class Services {
  Object getData({
    Object? params,
  });
}

class Login extends Services {
  @override
  Object getData({Object? params}) {
    return Never;
  }
}
