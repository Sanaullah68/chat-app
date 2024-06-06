class Message {
  final String content;
  final String? msg;
  final bool isSent;

  Message({
    required this.content,
    required this.isSent,
    this.msg,
  });
}
