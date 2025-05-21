import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              Divider(color: Color(0xff3E3D3D), thickness: 1),
              const SizedBox(height: 24),
              _buildPart1(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 32.5,
          child: Image.asset('assets/images/profile.png'),
        ),
        const SizedBox(width: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tom Andrew',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              'tomandrew662@gmail.com',
              style: TextStyle(color: Color(0x3cffffff), fontSize: 12),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Manage',
                    style: TextStyle(color: Color(0xffFF2626), fontSize: 12),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Remove',
                    style: TextStyle(color: Color(0xffFF2626), fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, color: Color(0xffFF2626)),
        ),
      ],
    );
  }

  Widget _buildPart1() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(Icons.account_circle, color: Colors.white),
            const SizedBox(width: 32),
            Text(
              'Your Channel',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
