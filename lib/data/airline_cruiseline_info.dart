class Airline {
  final String? name;
  final String? flightPrefix;

  Airline({this.name, this.flightPrefix});  
}


List<Airline> airlines = [
Airline( name: "American Airlines", flightPrefix: "AA"),
Airline( name: "Alaska Airlines", flightPrefix: ""),
Airline( name: "Delta Air Lines", flightPrefix: ""),
Airline( name: "Hawaiian Airlines", flightPrefix: ""),
Airline( name: "United Airlines", flightPrefix: ""),
Airline( name: "Southwest Airlines", flightPrefix: ""),
Airline( name: "Air Canada", flightPrefix: ""),
Airline( name: "WestJet", flightPrefix: ""),
Airline( name: "All Nippon Airways", flightPrefix: ""),
Airline( name: "Qantas", flightPrefix: ""),
Airline( name: "Philippine Airlines", flightPrefix: ""),
Airline( name: "Japan Airlines", flightPrefix: ""),
Airline( name: "Asiana Airlines", flightPrefix: ""),
Airline( name: "Air New Zealand", flightPrefix: ""),
Airline( name: "China Airlines", flightPrefix: ""),
Airline( name: "Aer Lingus", flightPrefix: ""),
Airline( name: "AeroMexico", flightPrefix: ""),
Airline( name: "Air China", flightPrefix: ""),
Airline( name: "Air France", flightPrefix: ""),
Airline( name: "Air Tahiti Nui", flightPrefix: ""),
Airline( name: "Alitalia", flightPrefix: ""),
Airline( name: "Avianca", flightPrefix: ""),
Airline( name: "British Airways", flightPrefix: ""),
Airline( name: "Cathay Pacific", flightPrefix: ""),
Airline( name: "China Eastern Airlines", flightPrefix: ""),
Airline( name: "Copa Airlines", flightPrefix: ""),
Airline( name: "El Al Israel Airlines", flightPrefix: ""),
Airline( name: "Emirates Airline", flightPrefix: ""),
Airline( name: "Fiji Airways", flightPrefix: ""),
Airline( name: "Iberia Airlines", flightPrefix: ""),
Airline( name: "JetBlue Airways", flightPrefix: ""),
Airline( name: "KLM Royal Dutch Airlines", flightPrefix: ""),
Airline( name: "Korean Air", flightPrefix: ""),
Airline( name: "LATAM Airlines Group", flightPrefix: ""),
Airline( name: "Lufthansa", flightPrefix: ""),
Airline( name: "Malaysia Airlines", flightPrefix: ""),
Airline( name: "Qantas Airways", flightPrefix: ""),
Airline( name: "Qatar Airways", flightPrefix: ""),
Airline( name: "Singapore Airlines", flightPrefix: ""),
Airline( name: "SWISS Air", flightPrefix: ""),
Airline( name: "Thai Airways", flightPrefix: ""),
Airline( name: "Turkish Airlines", flightPrefix: ""),
Airline( name: "Virgin Atlantic", flightPrefix: ""),
Airline( name: "WestJet Airlines", flightPrefix: "")
];

List<String> airlineNames = airlines.map((airline) { return (airline.name as String);}).toList();

class CruiseLine {
  final String? name;
  final String? shipName;

  const CruiseLine({this.name, this.shipName});  
}

const cruiseines = [
CruiseLine(name: "Holland America Line", shipName: ""),
CruiseLine(name: "Princess Cruises", shipName: ""),
CruiseLine(name: "Norwegian Cruise Line", shipName: ""),
CruiseLine(name: "Celebrity Cruises", shipName: ""),
CruiseLine(name: "Carnival Cruise Line", shipName: ""),
CruiseLine(name: "Royal Carribean", shipName: ""),
CruiseLine(name: "Asamara", shipName: ""),
CruiseLine(name: "Crystal Cruises", shipName: ""),
CruiseLine(name: "Uncruise Adventures", shipName: ""),
CruiseLine(name: "Koningsdam", shipName: ""),
CruiseLine(name: "Disney Cruise Line", shipName: "")
];

List<String> cruiseLineNames = cruiseines.map((cruiseine) { return (cruiseine.name as String);}).toList();

