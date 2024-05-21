class Completed {
  final String datetime;
  final String pickup;
  final String dropoff;
  final String distance;
  final String rideid;

  Completed(
    this.datetime,
    this.pickup,
    this.dropoff,
    this.distance,
    this.rideid,
  );
}

List completedRides = [
  Completed("March 5, 2024.10:00Am", "Kathmandu", "Chitwan", "4.5 km", "1"),
  Completed("March 5, 2024.11:00Am", "Kurunegala", "Colombo", "50 km", "2"),
];
