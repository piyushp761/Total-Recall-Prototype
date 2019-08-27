import 'package:flutter/material.dart';
import 'profileoptions.dart';

List getUserOperations() {
  return [
    ProfileOptions(
        optionName: 'E-Sign',
        optionDescription: 'Get E-Sign done with OTG.',
        optionIcon: Icon(Icons.fingerprint, color: Colors.white)),
    ProfileOptions(
        optionName: 'Language',
        optionDescription: 'Change the language of the app.',
        optionIcon: Icon(Icons.translate, color: Colors.white)),
    ProfileOptions(
        optionName: 'Escalate a Ticket',
        optionDescription: 'File a complaint.',
        optionIcon: Icon(Icons.report, color: Colors.white)),
   ProfileOptions(
        optionName: 'Privacy Policy',
        optionDescription: 'RedCarpet’s Privacy Policy',
        optionIcon: Icon(Icons.security, color: Colors.white)
        ),
    ProfileOptions(
        optionName: 'FAQ',
        optionDescription: 'Frequently Asked Questions',
        optionIcon: Icon(Icons.question_answer, color: Colors.white)
        ),
    ProfileOptions(
        optionName: 'Rate App',
        optionDescription: 'Rate your experience with us.',
        optionIcon: Icon(Icons.rate_review, color: Colors.white)
        ),
    ProfileOptions(
        optionName: 'Log Out',
        optionDescription: 'Log Out of Total Recall',
        optionIcon: Icon(Icons.exit_to_app, color: Colors.white)
        ),
  ];
}
