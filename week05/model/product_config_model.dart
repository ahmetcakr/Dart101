// singleton sınıf oluşturmak
// Eager Sigleton

class ProductConfig {
  static final ProductConfig instance = ProductConfig._(
      'sdkme2'); // const olmaz, final kullanırsak son değerini alacağı için uygun olur

  final String apikey;

  ProductConfig._(this.apikey);
}

// Veli agadan siniput
// lazy singleton
class ProductLazySingleton {
  static ProductLazySingleton? _instace;
  static ProductLazySingleton get instance {
    if (_instace == null) _instace = ProductLazySingleton._init();
    return _instace!;
  }

  ProductLazySingleton._init();
}
