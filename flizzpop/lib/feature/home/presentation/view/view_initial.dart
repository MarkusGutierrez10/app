
import 'package:flutter/material.dart';

class initial extends StatelessWidget {
  const initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("𝐁𝐈𝐄𝐍𝐕𝐄𝐍𝐈𝐃𝐎 𝐀 𝐅𝐈𝐙𝐙𝐏𝐎𝐏",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 30), 
              Image.network(
                "https://images.unsplash.com/photo-1622766815178-641bef2b4630?q=80&w=1519&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ),
                SizedBox(height: 40),
            
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, 
                  foregroundColor: Colors.white, 
                ),
                onPressed: () {},
                child: Text('𝐈𝐍𝐆𝐑𝐄𝐒𝐀𝐑'
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}