import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
        backgroundColor: const Color.fromARGB(255, 140, 120, 165),
        foregroundColor: const Color.fromARGB(255, 240, 236, 245),

        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Notifications",
            icon: Icon(Icons.notifications),
          ),

          IconButton(
            onPressed: () {},
            tooltip: "Info",
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 140, 120, 165),
              ),
              accountName: Text("Raven"),
              accountEmail: Text("raven@example.com"),
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.white,
              ),
            ),

            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Contact"),
              onTap: () {},
            ),

            Spacer(),

            ListTile(
              leading: Icon(Icons.logout),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 215, 205, 225),

      body: Column(
        children: [
          SizedBox(height: 20),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 140, 120, 165),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                  ),
                  child: Text("Elevated Button"),
                ),

                SizedBox(height: 8),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 140, 120, 165),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(130, 40),
                  ),
                  child: Text("Text Button"),
                ),

                SizedBox(height: 8),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 190, 175, 205),
                    foregroundColor: const Color.fromARGB(255, 70, 55, 90),
                    side: BorderSide(
                      color: const Color.fromARGB(255, 245, 240, 250),
                    ),
                  ),
                  child: Text("Outlined Button"),
                ),

                SizedBox(height: 8),

                IconButton(
                  onPressed: () {},
                  tooltip: "Icon Button",
                  style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 140, 120, 165),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(150, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 4),
                      Text("Icon Button"),
                    ],
                  ),
                ),

                //experiment
                Container(
                  height: 250,
                  width: 320,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 140, 120, 165),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'Hello Flutter',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 50, 35, 70),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}