import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Общежития КубГАУ',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 26;
  bool _isLiked = false;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      if (_isLiked) {
        _counter++;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Общежития КубГАУ',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Общежития КубГАУ'),
          backgroundColor:
              Colors.green, // Установка зеленого цвета для верхней панели
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/44.jpg', // Путь к вашей фотографии
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Общежитие № 20',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Краснодар, ул. Калинина, 13',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: _toggleLike,
                          child: Icon(
                            _isLiked ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          '$_counter',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            // Действия при нажатии на кнопку "Позвонить"
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              Text(
                                'Позвонить',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Действия при нажатии на кнопку "Маршрут"
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.directions,
                                color: Colors.green,
                              ),
                              Text(
                                'Маршрут',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Действия при нажатии на кнопку "Поделиться"
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.green,
                              ),
                              Text(
                                'Поделиться',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления -студенческие советы организуют всю работу по самообслуживанию',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
