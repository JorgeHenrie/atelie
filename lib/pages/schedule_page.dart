import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  final List<String> availableTimes = ['09:00', '10:00', '14:00', '15:00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agendar Aula')),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 30)),
            onDateChanged: (date) {
              // Update available times based on selected date
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: availableTimes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Horário: ${availableTimes[index]}'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Booking logic
                    },
                    child: Text('Reservar'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
