class FeedbackModel {
  final String name;
  final String email;

  FeedbackModel(this.name, this.email);

  String toParams() => "?name=$name&email=$email";
}
