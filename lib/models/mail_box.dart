class Mailbox {
  final String mailboxId;
  final String mailboxName;
  const Mailbox({
    this.mailboxId,
    this.mailboxName

  });

  Map<String, dynamic> toMap() {
    return {
      'mailboxId': mailboxId,
      'mailboxName': mailboxName,
    };
  }

  factory Mailbox.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Mailbox(
        mailboxName: json['mailboxName'] as String);
  }
}

final buecher = [
  Mailbox(
    mailboxId: "1",
    mailboxName: "Resrvierungsbestätigung",
  ),Mailbox(
    mailboxId: "2",
    mailboxName: "Anfragebestätigun",
  ),Mailbox(
    mailboxId: "3",
    mailboxName: "Fotosanfrage",
  ),Mailbox(
    mailboxId: "4",
    mailboxName: "weiterleitungsanfrage",
  ),

];