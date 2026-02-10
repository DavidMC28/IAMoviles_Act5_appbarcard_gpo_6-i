import 'package:flutter/material.dart';

void main() => runApp(AppAbarrotes());

class AppAbarrotes extends StatelessWidget {
  const AppAbarrotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abarrotes',
      home: Empleado(),
    );
  }
}

class Empleado extends StatelessWidget {
  const Empleado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abarrotes David"),
        backgroundColor:Colors.blue,
        actions: [
          Icon(Icons.bedroom_child),
          Icon(Icons.flight)
          
         
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          width: 320, // Ancho ajustable
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF800000), // Guinda
                Color(0xFF2E0000), // Guinda oscuro/negro
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white24,
                backgroundImage: NetworkImage(
                  'https://private-user-images.githubusercontent.com/229819199/547807486-f4bb0a6b-ee91-4c86-930b-84c1e95217f0.jpg?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzA3NDA2ODQsIm5iZiI6MTc3MDc0MDM4NCwicGF0aCI6Ii8yMjk4MTkxOTkvNTQ3ODA3NDg2LWY0YmIwYTZiLWVlOTEtNGM4Ni05MzBiLTg0YzFlOTUyMTdmMC5qcGc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjEwJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIxMFQxNjE5NDRaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wNWRkMzlhMDQwYTAyYWI5ZWJlYTRmOWM4MGVjMTI0ZjFlNGJlMjYxY2RjNGQ3YTM5NjExMmI4ZDg3ZWEyMzU5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.VsuRkhREg_jhK6-TlMOAIZP7P9E_xJszu9tvFxOTl2g',
                ),
              ),
              title: Text(
                'David Macias',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Gerente',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
