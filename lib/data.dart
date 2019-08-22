import 'userfunnels.dart';

List getUserFunnels() {
  return [
    UserFunnels(
        funnelName: "New Referrals",
        userNumbers: 20,
        funnelDescription: "Contact users to explain process."),
    UserFunnels(
        funnelName: "Document Pending",
        userNumbers: 20,
        funnelDescription: "Get users to upload all required docs."),
    UserFunnels(
        funnelName: "Sign Pending",
        userNumbers: 20,
        funnelDescription: "Get Users to E-Sign."),
    UserFunnels(
        funnelName: "Resubmit Docs",
        userNumbers: 20,
        funnelDescription: "Get users to update missing docs."),
    UserFunnels(
        funnelName: "Application Review",
        userNumbers: 20,
        funnelDescription: "Wait for review to be completed."),
    UserFunnels(
        funnelName: "Payment Pending",
        userNumbers: 20,
        funnelDescription: "Wait for review to be completed."),
    UserFunnels(
        funnelName: "Additional Docs Submit",
        userNumbers: 20,
        funnelDescription: "Get users to upload additional Docs."),
    UserFunnels(
        funnelName: "Additional Review",
        userNumbers: 20,
        funnelDescription: "Additional review is being conducted."),
    UserFunnels(
        funnelName: "Credit Rejected",
        userNumbers: 20,
        funnelDescription: "Rejected users. No action required."),
    UserFunnels(
        funnelName: "Payment Complete",
        userNumbers: 20,
        funnelDescription: "All done. No action required."),
    UserFunnels(
        funnelName: "Exclusion",
        userNumbers: 20,
        funnelDescription:
            "User marked as temporary rejected. No action required."),
  ];
}