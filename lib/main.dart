import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Table(
          border: TableBorder.all(
            width: 2,
            color: Colors.red[200],
          ),
          // defaultColumnWidth:
          // FixedColumnWidth(70),
          // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          // textDirection: TextDirection.rtl,
          // textBaseline: TextBaseline.ideographic,
          children: [
            data(),
            data1('1', 'Tahira', '300', '270', '90'),
            data1('2', 'Iqra', '300', '240', '90'),
            data1('3', 'Linta', '300', '170', '69'),
            data1('4', 'Asnat', '300', '110', '40'),
            data1('5', 'Abeeha', '300', '180', '72'),
            data1('6', 'Faina', '300', '150', '50'),
            data1('7', 'Urida', '300', '100', '36'),
            data1('8', 'Sobia', '300', '200', '80'),
            data1('9', 'Taiba', '300', '290', '93'),
            data1('10', 'Urwa', '300', '34', '33'),
            data1('11', 'Nida', '300', '120', '45'),
            data1('12', 'Isha', '300', '259', '75'),
            data1('13', 'Anaya', '300', '189', '66'),
            data1('14', 'Rida', '300', '102', '46'),
            data1('15', 'Mehak', '300', '245', '83'),
          ],
        ),
      ),
    );
  }

  TableRow data() {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('SNO', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('NAME', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('TOTAL MARKS', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('OBT MARKS', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('PER', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('GRADE', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
  ]);
}

TableRow data1(
  String no,
  String name,
  String tm,
  String to,
  String per,
) {
  return TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(no),
    ), 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(tm),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(to),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(per),
    ),
    int.parse(per.toString()) >= 90
    ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('A1'),
      ) 
    :  int.parse(per.toString()) >= 80
    ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('A'),
      )
    :  int.parse(per.toString()) >= 70
    ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('B'),
      )
    :  int.parse(per.toString()) >= 60
    ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('C'),
      )
    :  int.parse(per.toString()) >= 60
    ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Fail'),
      )
    :  int.parse(to.toString()) < 150
      ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Fail'))
    : Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Pass'))
    ]);    
 } 
}   