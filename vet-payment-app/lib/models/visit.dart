class Visit {
   int id;
   String location;
   String procedure;
   int amountDue;
   bool paid;

  Visit({required this.id, required this.location, required this.procedure, required this.amountDue, required this.paid});

  factory Visit.fromJsom(Map<String, dynamic> parsedJson){
    return Visit(id: parsedJson['id'],
      location: parsedJson['location'].toString(),
        procedure: parsedJson['procedure'].toString(),
        amountDue: parsedJson['amountDue'],
        paid: parsedJson['paid']);
  }

  // Visit.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       location = json['location'],
  //       procedure = json['procedure'],
  //       amountDue = json['amountDue'],
  //       paid = json['paid'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'location': location, 'procedure': procedure, 'amountDue': amountDue, 'paid': paid};
}
