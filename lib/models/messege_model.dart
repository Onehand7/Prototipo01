import 'package:OneHand/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: "Current User",
);
final User sebastian = User(id: 1, name: "Sebastian");
final User andres = User(id: 2, name: "Andres");
final User daniel = User(id: 3, name: "Daniel");

List<Message> chats = [
  Message(
    sender: sebastian,
    time: "00:30 AM",
    text: "Hola, tengo un problema con mi computadora",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andres,
    time: "14:23 PM",
    text: "Hola buenas, digame cual es su problema",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: daniel,
    time: "5:30 PM",
    text: "Hola, tengo un problema con mi computadora",
    isLiked: false,
    unread: true,
  )
];

List<Message> messages = [
  Message(
    sender: sebastian,
    time: '5:30 PM',
    text: 'Hola, tengo un problema con mi computadora',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '4:30 PM',
    text: 'Hola buenas, digame cual es su problema',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sebastian,
    time: '3:45 PM',
    text: "El problema es que mi computadora anda lenta y se apaga",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sebastian,
    time: '3:15 PM',
    text: 'ayuda!!',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '2:30 PM',
    text: 'Bueno, al parecer su computadora necesita mantencion',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andres,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
