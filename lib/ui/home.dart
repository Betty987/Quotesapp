import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int index = 0;
  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
"The way to get started is to quit talking and begin doing. -Walt Disney",

"Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
"If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
"If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
"If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
"Life is what happens when you're busy making other plans. -John Lennon",
"Spread love everywhere you go. Let no one ever come to you without leaving happier. -Mother Teresa",
"When you reach the end of your rope, tie a knot in it and hang on. -Franklin D. Roosevelt",
"Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
"Don't judge each day by the harvest you reap but by the seeds that you plant. -Robert Louis Stevenson",
"The future belongs to those who believe in the beauty of their dreams. -Eleanor Roosevelt",
"Tell me and I forget. Teach me and I remember. Involve me and I learn. -Benjamin Franklin",
"The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller",
"It is during our darkest moments that we must focus to see the light. -Aristotle",
"Whoever is happy will make others happy too. -Anne Frank",
"Do not go where the path may lead, go instead where there is no path and leave a trail. -Ralph Waldo Emerson"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
       
        body: Container(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Greatest Quotes of all time",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        ),

        Container(
          width:350,
          height:200,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(quotes[index%quotes.length]))),

        Divider(thickness: 1.2,color: Colors.black26),

        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: FlatButton.icon(
            
              onPressed: _getquote,
              color: Colors.greenAccent.shade400,
              icon: Icon(Icons.lightbulb),
              label: Text('Inspire me!',style:TextStyle(color:Colors.white,fontStyle: FontStyle.normal, fontSize: 18))
              
              
              ),
        )
      ],
    )));
  }

  void _getquote() {
    setState(() {
      index++;
    });
  }
}
