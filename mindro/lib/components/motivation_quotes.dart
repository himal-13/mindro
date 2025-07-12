import 'dart:math';

import 'package:flutter/material.dart';


const List<String> quotes = [
        "Breathe in peace, exhale chaos. This moment is yours.",
        "Every breath is a new beginning. Start where you are.",
        "Silence isn’t empty—it’s full of answers. Listen.",
        "Meditation is not about perfection; it’s about presence.",
        "One mindful minute today builds a peaceful tomorrow.",
        "The mind is like the sky—sometimes cloudy, but always vast and clear beneath.",
        "The quieter you become, the more you can hear.",
        "Meditation is the art of doing nothing and discovering everything.",
        "Your breath is the anchor—return to it when the mind drifts.",
        "Restlessness is just energy seeking stillness. Breathe through it.",
        "Even the busiest mind can find peace—one breath at a time.",
        "You are not your thoughts. Observe them, then let them pass like clouds.",
        "Today’s meditation is tomorrow’s clarity.",
        "Peace isn’t the absence of noise, but the presence of calm within.",
        "The present moment is the only place where life truly happens. Be here.",

];



class MotivationQuotes extends StatefulWidget {
  const MotivationQuotes({super.key});

  @override
  State<MotivationQuotes> createState() => _MotivationQuotesState();
}

class _MotivationQuotesState extends State<MotivationQuotes> {

  String currestQuote = quotes[Random().nextInt(quotes.length)];

  void _generateQuote() {
    setState(() {
      currestQuote = quotes[Random().nextInt(quotes.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Motivation", style: TextStyle(fontSize:10),),
              Icon(Icons.menu_book, size: 15,)
              ], ),
          Text('"$currestQuote "', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: _generateQuote, child: Text("Random Quote", style: TextStyle(fontSize: 12),)),
            ],
          ),
        ],
      ),
    );
  }
}
