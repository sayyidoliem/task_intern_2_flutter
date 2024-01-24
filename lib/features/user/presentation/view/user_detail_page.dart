import 'package:task_intern_2_flutter/import.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage(
      {super.key,
      required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.lat,
      required this.lng,
      required this.phone,
      required this.website,
      required this.companyName,
      required this.catchPhrase,
      required this.bs});

  // final UserBloc myBloc;
  final int id;
  final String name;
  final String username;
  final String email;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;
  final String phone;
  final String website;
  final String companyName;
  final String catchPhrase;
  final String bs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail User Page',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    child: Text(
                      '$id',
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Name: $name',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Username: $username',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Email: $email',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Street address: $street',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Suite address: $suite',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'City address: $city',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Zipcode address: $zipcode',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lat address: $lat',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lng address: $lng',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Phone: $phone',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Website: $website',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Company name: $companyName',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'CatchPhrase company: $catchPhrase',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Bs Company: $bs',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
