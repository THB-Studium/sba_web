class Mailbox {
<<<<<<< HEAD
  final String id;
  final String senderName;
  final String titel;
  final String content;
  final DateTime date;

  const Mailbox({
    this.id,
    this.senderName,
    this.titel,
    this.content,
    this.date
=======
  final String mailboxId;
  final String mailboxName;
  const Mailbox({
    this.mailboxId,
    this.mailboxName

>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
  });

  Map<String, dynamic> toMap() {
    return {
<<<<<<< HEAD
      'idd': id,
      'senderName': senderName,
      'name': titel,
      'content': content,
      'date': date
=======
      'mailboxId': mailboxId,
      'mailboxName': mailboxName,
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
    };
  }

  factory Mailbox.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Mailbox(
<<<<<<< HEAD
        senderName: json['senderName'] as String,
        titel: json['titel'] as String,
        content: json['content'] as String,
        date: json['date'] as DateTime
    );
  }
}

final nachrichten = [
  Mailbox(
      id: "1",
      senderName: 'Steve',
      titel: "Resrvierungsbestätigung",
      content: 'lkjsdojboujbsudc onbsdocnonadscnl',
      date: new DateTime.now()
  ),
  Mailbox(
      id: "2",
      senderName: 'Tricia',
      titel: "Anfragebestätigun",
      content: 'iugasidgias kuuhasiudgfioukabsdf',
      date: new DateTime.now()
  ),
  Mailbox(
      id: "3",
      senderName: 'Junior',
      titel: "Fotosanfrage",
      content: 'iugADSGIIAGSDIUHAdc iughiougsdigUIGID',
      date: new DateTime.now()
  ),
  Mailbox(
      id: "4",
      senderName: 'Dorline',
      titel: "weiterleitungsanfrage",
      content: 'lhasidgizasdgf iuhsdiufgousadfgouDSFUOoughousdhvuoh koubhsduo',
      date: new DateTime.now()
  )
];
=======
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
>>>>>>> a1b1ad28fcc8c788b7c803cf9af33c05328f22ef
