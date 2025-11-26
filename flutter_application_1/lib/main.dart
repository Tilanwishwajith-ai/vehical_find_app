import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VehicleFinderApp(),
  ));
}

// Data Model
class Vehicle {
  String name;
  String price;
  String image;
  String type;
  String description; // විස්තරය අලුතින් දැම්මා

  Vehicle({
    required this.name,
    required this.price,
    required this.image,
    required this.type,
    required this.description,
  });
}

class VehicleFinderApp extends StatefulWidget {
  const VehicleFinderApp({super.key});

  @override
  State<VehicleFinderApp> createState() => _VehicleFinderAppState();
}

class _VehicleFinderAppState extends State<VehicleFinderApp> {
  final Color darkGreen = const Color(0xFF1B5E20);

  // ඔක්කොම වාහන ටික (Data)
  final List<Vehicle> allVehicles = [
    Vehicle(name: 'Land Cruiser', price: 'Rs. 45M', type: 'SUV', description: 'V8 Engine, Luxury Interior', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/2021_Toyota_Land_Cruiser_300_ZX_%28Colombia%29_front_view_04.png/640px-2021_Toyota_Land_Cruiser_300_ZX_%28Colombia%29_front_view_04.png'),
    Vehicle(name: 'Honda Civic', price: 'Rs. 11M', type: 'Car', description: 'Turbo Engine, Sporty Look', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/2022_Honda_Civic_Touring_Sedan_in_Platinum_White_Pearl%2C_front_left.jpg/640px-2022_Honda_Civic_Touring_Sedan_in_Platinum_White_Pearl%2C_front_left.jpg'),
    Vehicle(name: 'Suzuki Alto', price: 'Rs. 2.8M', type: 'City', description: 'Budget Car, Best MPG', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Suzuki_Alto_800_LXI_%28facelift%29.jpg/640px-Suzuki_Alto_800_LXI_%28facelift%29.jpg'),
    Vehicle(name: 'Toyota KDH', price: 'Rs. 12.5M', type: 'Van', description: 'Passenger Van, Diesel', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Toyota_HiAce_Van_DX_Long_01.jpg/640px-Toyota_HiAce_Van_DX_Long_01.jpg'),
    Vehicle(name: 'Nissan Leaf', price: 'Rs. 6.5M', type: 'EV', description: 'Electric, Zero Emission', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/2018_Nissan_Leaf_Tekna_Front.jpg/640px-2018_Nissan_Leaf_Tekna_Front.jpg'),
    Vehicle(name: 'Range Rover', price: 'Rs. 65M', type: 'Luxury', description: 'Ultimate Luxury SUV', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Land_Rover_Range_Rover_%28L405%29_IMG_3850.jpg/640px-Land_Rover_Range_Rover_%28L405%29_IMG_3850.jpg'),
    Vehicle(name: 'Toyota Axio', price: 'Rs. 9.5M', type: 'Sedan', description: 'Family Sedan, Hybrid', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/2012_Toyota_Corolla_Axio_1.5_Luxel_%28NZE161%29_front.jpg/640px-2012_Toyota_Corolla_Axio_1.5_Luxel_%28NZE161%29_front.jpg'),
    Vehicle(name: 'Wagon R', price: 'Rs. 3.5M', type: 'City', description: 'Hybrid, Spacious', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Suzuki_Wagon_R_Hybrid_FX_%28MH55S%29_front.jpg/640px-Suzuki_Wagon_R_Hybrid_FX_%28MH55S%29_front.jpg'),
    Vehicle(name: 'BMW 5 Series', price: 'Rs. 25M', type: 'Luxury', description: 'German Tech, Fast', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/BMW_520d_M_Sport_%28G30%29_front_view.jpg/640px-BMW_520d_M_Sport_%28G30%29_front_view.jpg'),
    Vehicle(name: 'Benz C-Class', price: 'Rs. 28M', type: 'Luxury', description: 'Premium Comfort', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Mercedes-Benz_C_200_Avantgarde_%28W_205%29_front_view.jpg/640px-Mercedes-Benz_C_200_Avantgarde_%28W_205%29_front_view.jpg'),
    Vehicle(name: 'Toyota Vitz', price: 'Rs. 5.5M', type: 'Hatch', description: 'Compact, Reliable', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Toyota_Vitz_F_Safety_Edition_III_%28KSP130%29_front.jpg/640px-Toyota_Vitz_F_Safety_Edition_III_%28KSP130%29_front.jpg'),
    Vehicle(name: 'Honda Vezel', price: 'Rs. 10.5M', type: 'SUV', description: 'Crossover, Stylish', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Honda_VEZEL_HYBRID_Z_4WD_%28DAA-RU4%29_front.jpg/640px-Honda_VEZEL_HYBRID_Z_4WD_%28DAA-RU4%29_front.jpg'),
    Vehicle(name: 'Defender', price: 'Rs. 55M', type: 'Off-road', description: 'Rough Terrain', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Land_Rover_Defender_110_1990.jpg/640px-Land_Rover_Defender_110_1990.jpg'),
    Vehicle(name: 'Montero', price: 'Rs. 32M', type: 'SUV', description: 'Big SUV, 4x4', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Mitsubishi_Pajero_3.2_DI-D_DPF_Automartik_Instyle_%28V80%2C_Facelift%29_%E2%80%93_Frontansicht%2C_25._Juni_2011%2C_W%C3%BClfrath.jpg/640px-Mitsubishi_Pajero_3.2_DI-D_DPF_Automartik_Instyle_%28V80%2C_Facelift%29_%E2%80%93_Frontansicht%2C_25._Juni_2011%2C_W%C3%BClfrath.jpg'),
    Vehicle(name: 'Prius', price: 'Rs. 8.5M', type: 'Car', description: 'Hybrid Leader', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/2019_Toyota_Prius_Icon_1.8_Front.jpg/640px-2019_Toyota_Prius_Icon_1.8_Front.jpg'),
  ];

  // Search එකට පාවිච්චි කරන List එක
  List<Vehicle> foundVehicles = [];

  @override
  void initState() {
    // App එක පටන් ගන්නකොට ඔක්කොම පෙන්නන්න
    foundVehicles = allVehicles;
    super.initState();
  }

  // Search Logic එක (Search Bar එකේ ගහනකොට වැඩ කරන කොටස)
  void _runFilter(String enteredKeyword) {
    List<Vehicle> results = [];
    if (enteredKeyword.isEmpty) {
      // මොකුත් ගහලා නැත්නම් ඔක්කොම පෙන්නන්න
      results = allVehicles;
    } else {
      // නම ගැලපෙන ඒවා විතරක් පෙන්නන්න
      results = allVehicles
          .where((vehicle) =>
              vehicle.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      foundVehicles = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('AutoMart 🚙', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        backgroundColor: darkGreen,
        foregroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 50,
      ),
      body: Column(
        children: [
          // Search Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: darkGreen,
            child: TextField(
              onChanged: (value) => _runFilter(value), // අකුරක් ගැහුවම Filter function එක වැඩ කරනවා
              style: const TextStyle(fontSize: 13),
              decoration: InputDecoration(
                hintText: 'Search (e.g. Alto)...',
                prefixIcon: Icon(Icons.search, color: darkGreen, size: 18),
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              ),
            ),
          ),
          
          // Grid View
          Expanded(
            child: foundVehicles.isNotEmpty
                ? GridView.builder(
                    padding: const EdgeInsets.all(5),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5, // පේළියට 5යි
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: foundVehicles.length,
                    itemBuilder: (context, index) {
                      final vehicle = foundVehicles[index];
                      
                      return InkWell(
                        // Navigation Logic (Click කරාම වෙන දේ)
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VehicleDetailPage(vehicle: vehicle, themeColor: darkGreen),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              // ignore: deprecated_member_use
                              BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 2),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 6,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                                  child: Image.network(
                                    vehicle.image,
                                    fit: BoxFit.cover,
                                    // පින්තූරේ පෙනුනේ නැත්නම් පාටක් සහ අයිකන් එකක් පෙන්නනවා
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.green[50],
                                        child: Center(child: Icon(Icons.directions_car, color: darkGreen, size: 30)),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(vehicle.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11), maxLines: 1, overflow: TextOverflow.ellipsis),
                                      Text(vehicle.price, style: TextStyle(color: darkGreen, fontWeight: FontWeight.bold, fontSize: 10)),
                                      Text(vehicle.type, style: const TextStyle(fontSize: 8, color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : const Center(child: Text('No vehicles found')), // Search කරාම මුකුත් නැත්නම්
          ),
        ],
      ),
    );
  }
}

// විස්තර පෙන්වන පිටුව
class VehicleDetailPage extends StatelessWidget {
  final Vehicle vehicle;
  final Color themeColor;

  const VehicleDetailPage({super.key, required this.vehicle, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name), backgroundColor: themeColor),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Image.network(
               vehicle.image,
               width: double.infinity,
               fit: BoxFit.cover,
               errorBuilder: (context, error, stackTrace) => Container(color: Colors.green[100], child: const Icon(Icons.directions_car, size: 100)),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vehicle.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(vehicle.price, style: TextStyle(fontSize: 20, color: themeColor, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text(vehicle.description, style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}