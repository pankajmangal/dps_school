class AppUtils{
  static int type = 0;
  static String authToken = "";
  static String baseUrl = "https://admin.activelearnersdrivingschool.com.au/api/";

  static String stripeBaseUrl = "https://api.stripe.com/v1/";
  static String stripeSecretToken = 'sk_test_51MO7isGR0lLWknq9ep9IdUBhVB7gzYrw479ZHipRU7q18RM3EXjU2zOoiTLE0AnPylvRSLl80IgzxQQPe5PurPtI00wYi2Rzjq';
  static String stripeSecretLiveToken = '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';
  static String stripePublishableTestKey = "pk_test_51MO7isGR0lLWknq9VM0Z29EsjU93X7wvDcPe6qaOLxiXlz7vCJ5AjYMfAOxplGWBqIbF7KpBA1xbBryQAoi34rKI00tgwQpfnh";
  static String stripePublishableLiveKey = "pk_live_51MO7isGR0lLWknq9DE4uKIfi1Oj8MrjNYLJcanvn291IJU6yfnTpEQmSfRpxwbuGhGwjQYnebB2w0hAr7VDnmRyF0057ZOxwAe";

  static String dateTimeFormat = "MM-dd-yyyy h:mm a";
  static bool canUserComeFromRegisterScreen = true;

  //Stripe API endpoints here...
  static String paymentIntent = "payment_intents";

  //API Endpoint of user....
  static String orderPlace = "order/placeorder";
  static String checkCouponCode = "order/coupon";
  static String cancelOrder = "order/cancelorder";
  static String getOrders = "order/getorder";
  static String sendNotification = "order/send_notification";

  //
  static String getAllProduct = "order/getProduct";
  static String getProduct = "order/getProduct";
  static String getSpecialProduct = "order/getspecialproduct";
}