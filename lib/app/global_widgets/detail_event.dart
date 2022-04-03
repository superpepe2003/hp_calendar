import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/data/model/cita_model.dart';
import 'package:intl/intl.dart';

class DetailEvent extends StatelessWidget {
  final CitaModel event;

  const DetailEvent({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(event.description);
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(
        children: [
          HeaderDiagonal(),
          Container(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    event.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Text(event.type,
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12,
                            fontFamily: 'RobotoMono')),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                ),
                _showDate(),
                _showTime(),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _showDate() {
    return (event.start.isSameDate(event.end))
        ? Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              DateFormat('dd MMMM', 'es').format(event.start),
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'HammersmithOne',
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              DateFormat('dd MMMM', 'es').format(event.start) +
                  ' - ' +
                  DateFormat('dd MMMM', 'es').format(event.end),
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'HammersmithOne',
              ),
            ),
          );
  }

  Widget _showTime() {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.circle_notifications,
                  color: Color(0xFF72388C), size: 30),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                color: Color(0xFF72388C),
                width: 1,
                height: 20,
              ),
              Text(
                DateFormat('HH:mm', 'es').format(event.start) +
                    '   ' +
                    '${!event.start.isSameDate(event.end) ? DateFormat('dd MMMM', 'es').format(event.start) : ''}',
                style: TextStyle(
                  color: Color(0xFF72388C),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'HammersmithOne',
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 13),
              color: Color(0xFF72388C),
              height: 25,
              width: 1,
            ),
          ),
          Row(
            children: [
              Icon(Icons.circle_notifications,
                  color: Color(0xFF72388C), size: 30),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                color: Color(0xFF72388C),
                width: 1,
                height: 20,
              ),
              Text(
                DateFormat('HH:mm', 'es').format(event.end) +
                    '   ' +
                    '${!event.start.isSameDate(event.end) ? DateFormat('dd MMMM', 'es').format(event.end) : ''}',
                style: TextStyle(
                  color: Color(0xFF72388C),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'HammersmithOne',
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(event.description + event.description,
                style: TextStyle(
                  color: Color(0xFF72388C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway',
                )),
          )
        ],
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

extension DateOnlyCompare2 on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameHour(DateTime other) {
    return hour == other.hour && minute == other.minute;
  }
}
