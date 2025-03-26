import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contenedor Personalizado')),
        body: Center(child: CustomContainer()),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icono izquierdo
          Icon(Icons.arrow_left, size: 30),

          // Espacio para las imágenes
          Row(
            children: [
              // Imagen 1
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 40,
                height: 40,
                child: Image.asset(
                  'amazon_page/assets/images/OIP.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Imagen 2
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 40,
                height: 40,
                child: Image.asset(
                  'amazon_page/assets/images/R (1).png',
                  fit: BoxFit.cover,
                ),
              ),
              // Imagen 3
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 40,
                height: 40,
                child: Image.asset('assets/images/eco.png', fit: BoxFit.cover),
              ),
              // Imagen 4
              SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/images/fire.png', fit: BoxFit.cover),
              ),
            ],
          ),

          // Columna de texto
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Primera línea de texto
              Text(
                'Off to College Deals',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // Segunda línea de texto
              Text(
                'Amazon Devices with Alexa',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              // Tercera línea de texto
              Text(
                'Limited Time-offer',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
            ],
          ),

          // Icono derecho
          Icon(Icons.arrow_right, size: 30),
        ],
      ),
    );
  }
}
