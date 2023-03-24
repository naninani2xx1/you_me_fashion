class ApiEndpoint {
  static const String login = "auth/login";
  static const String loginGoogle = "auth/login-google";
  static const String register = "auth/register";
  static const String loggout = "auth/logout";

  static const String me = "user/me";
  static const String update = "user/edit-profile";
  static const String changePassword = "user/change-password";

  static const String fetchBanner = "banner/fetch-banner";
  static const String fetchCategory = "cate/fetch-categories";

  static const String fetchProduct = "product/fetch-product-all";
  static const String fetchPopularSearch = "product/fetch-popular-search";

  static const String fetchReview = "review/fetch-review";

  static const String createOrder = "order/create";
  static const String fetchOrder = "order/fetch-order";
}
