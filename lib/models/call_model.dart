enum CallMode {
  video,
  audio,
}

enum CallType {
  incoming,
  going,
  missed,
}

class Call {
  final String name;
  final String lastCallTime;
  final CallMode mode;
  final String? avatarUrl;
  final CallType type;
  Call({
    required this.name,
    required this.lastCallTime,
    required this.type,
    required this.mode,
    this.avatarUrl,
  });
}

List<Call> dummyCalls = [
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.going,
    mode: CallMode.video,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:29 pm",
    type: CallType.incoming,
    mode: CallMode.audio,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Mike Ross",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.incoming,
    mode: CallMode.audio,
    avatarUrl:
        "https://images.unsplash.com/photo-1643224981923-b63f2417d220?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ5fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.incoming,
    mode: CallMode.video,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.going,
    mode: CallMode.video,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.going,
    mode: CallMode.video,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.going,
    mode: CallMode.audio,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.incoming,
    mode: CallMode.video,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
  Call(
    name: "Rahul",
    lastCallTime: "22 January, 8:35 pm",
    type: CallType.incoming,
    mode: CallMode.audio,
    avatarUrl:
        "https://images.unsplash.com/photo-1643310878278-982927b3afca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ),
];
