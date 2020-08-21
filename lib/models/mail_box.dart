class Mailbox {
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
  });

  Map<String, dynamic> toMap() {
    return {
      'idd': id,
      'senderName': senderName,
      'name': titel,
      'content': content,
      'date': date
    };
  }

  factory Mailbox.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Mailbox(
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
