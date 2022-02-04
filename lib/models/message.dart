class Message {
  final String msg;
  final String time;
  final String date;
  final bool isSender;

  const Message({
    required this.msg,
    required this.time,
    required this.date,
    this.isSender = false,
  });
}

const List<Message> messageList = [
  Message(msg: "You Hi Nigga", time: "2:30 pm", date: "21 december, 2021"),
  Message(
      msg: "You should Check this out.",
      time: "2:30 pm",
      date: "21 december, 2021"),
  Message(
      msg: "Let me See",
      time: "2:30 pm",
      date: "21 december, 2021",
      isSender: true),
  Message(msg: "Yo that's cool", time: "2:30 pm", date: "21 december, 2021"),
  Message(
      msg: "Cool", time: "2:30 pm", date: "21 december, 2021", isSender: true),
  Message(msg: "Ok yeah", time: "2:30 pm", date: "21 december, 2021"),
  Message(msg: "see ya next time!", time: "2:30 pm", date: "21 december, 2021"),
  Message(msg: "Bye!", time: "2:30 pm", date: "21 december, 2021"),
  Message(
      msg: "Bye!", time: "2:30 pm", date: "21 december, 2021", isSender: true),
];
