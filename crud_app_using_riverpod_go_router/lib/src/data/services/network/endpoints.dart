class Endpoints {
  static const base = 'http://103.197.207.34:3039/api';

  /// Authentication
  static const String login = '/auth/crm-user/login';
  static const String forgotPassword = '/auth/forgot-password/send-code';
  static const String resetPassword = '/auth/reset_password/';
  static const String refreshToken = '/auth/refresh';
  static const String logout = '/auth/logout';
  static const String switchBusiness = '/auth/switch-business';

  /// OTP
  static const String verifyOtp = '/otp/verify_otp/';
  static const String resendOtp = '/otp/resend_otp/';

  // Me
  static const String me = '/user/me';

  // Routes
  static const String jobRoutes = '/crm/business/{businessId}/routes';

  // Jobs
  static const String jobs = '/crm/business/{businessId}/routes/{id}';
  static const String jobAttachments =
      '/crm/businesses/{businessId}/media/presigned-url';
  static const String deleteJobAttachment =
      '/crm/businesses/{businessId}/media/delete-file';
  static const String jobDetails = '/crm/business/{businessId}/jobs/{jobId}';

  // Time Sheets
  static const String addManualTime =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets/manual';
  static const String timeSheets =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets';
  static const String modifyTimeSheet =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets/{timeSheetId}';
  static const String clockIn =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets/clock-in';
  static const String clockOut =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets/{timeSheetId}/clock-out';
  static const String activeTimeSheet =
      '/crm/business/{businessId}/jobs/{jobId}/time-sheets/active';

  // Job Comments
  static const String jobComments =
      '/crm/business/{businessId}/jobs/{jobId}/comments';

  /// Customer
  static const String customers = '/crm/businesses/{businessId}/customers';
  static const String customerDetails =
      '/crm/businesses/{businessId}/customers/{customerId}';

  /// Address
  static const String propertyInfo =
      '/crm/businesses/{businessId}/users/{userId}/addresses/search-property-info';

  /// Services
  static const String services =
      '/crm/businesses/{businessId}/services/mapped-service-package-list';
  static const String oneTimeServices =
      '/crm/businesses/{businessId}/ots-packages';

  /// Price-Summary
  static const String priceSummary =
      '/crm/businesses/{businessId}/services/calculate-price';

  /// Recurring Job - Order Placement
  static const String recurringJobOrderPlacement =
      '/crm/business/{businessId}/orders/place-order-for-customer/{customerId}';

  /// Crews
  static const String crews = '/business/{businessId}/crews';

  /// Payment
  static const String payment =
      '/crm/businesses/{businessId}/create-checkout-session/create-checkout-session';

  /// One Time Job - Order Placement
  static const String oneTimeJobOrderPlacement =
      '/crm/business/{businessId}/orders/place-ots-order-for-customer/{customerId}';

  /// Visits
  static const String visits = '/crm/business/{businessId}/visits';
  static const String visitDetails = '/crm/business/{businessId}/visits/{id}';

  /// Visit Comments
  static const String visitComments =
      '/crm/business/{businessId}/visits/{visitId}/comments';

  // Leads
  static const String leads = '/crm/businesses/{businessId}/leads';
  static const String leadDetails =
      '/crm/businesses/{businessId}/leads/{leadId}';

  // Lead Comments
  static const String leadComments =
      '/crm/business/{businessId}/leads/{leadId}/comments';

  // Tasks
  static const String tasks = '/crm/businesses/{businessId}/tasks';

  /// Payment Status Check
  static const String paymentStatusCheck = '/stripe/payment-status-check';
  static const String taskDetails =
      '/crm/businesses/{businessId}/tasks/{taskId}';

  // Task Comments
  static const String taskComments =
      '/crm/business/{businessId}/tasks/{taskId}/comments';

  /// Customer Orders
  static const String customerOrders =
      '/crm/businesses/{businessId}/customers/{customerId}/orders';
}
