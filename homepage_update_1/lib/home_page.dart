import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color primary = Color.fromARGB(255, 150, 110, 160);
  static const Color background = Color.fromARGB(255, 226, 212, 230);
  static const Color darkText = Color.fromARGB(255, 80, 60, 85);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Notifications",
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            tooltip: "Menu",
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: primary),
              accountName: Text("Raven"),
              accountEmail: Text("raven@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("About"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.mail_outline),
              title: const Text("Contact"),
              onTap: () {},
            ),

            const Spacer(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      backgroundColor: background,

      body: Column(
        children: [
          const SizedBox(height: 20),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: primary,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Filled"),
              ),

              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkText,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.rocket_launch),
                label: const Text("Elevated"),
              ),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 205, 185, 210),
                  foregroundColor: darkText,
                  side: const BorderSide(color: primary, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Outlined"),
              ),

              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: darkText,
                ),
                icon: const Icon(Icons.touch_app),
                label: const Text("Text"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _infoCard(Icons.flutter_dash, "Welcome", "Flutter app e shagotom"),
                _infoCard(Icons.code, "Projects", "Tomar sob project ekhane"),
                _infoCard(Icons.settings, "Settings", "App settings customize koro"),

                const SizedBox(height: 30),

                Center(
                  child: Text(
                    "Hello Flutter",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: darkText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _infoCard(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(icon, color: primary),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}