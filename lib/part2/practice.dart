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
          child: Column(children: [
            _buildHeader(),
            const SizedBox(height: 24),
            Divider(
              color: Color(0xff3E3D3D),
              thickness: 1,
            ),
            const SizedBox(height: 24),
            _buildPart1(),
            const SizedBox(height: 24),
            Divider(
              color: Color(0xff3E3D3D),
              thickness: 1,
            ),
            const SizedBox(height: 24),
            _buildPart2(),
            const SizedBox(height: 24),
            Divider(
              color: Color(0xff3E3D3D),
              thickness: 1,
            ),
            const SizedBox(height: 24),
            _buildPart3(),
            const SizedBox(height: 24),
            Divider(
              color: Color(0xff3E3D3D),
              thickness: 1,
            ),
            const SizedBox(height: 24),
            _buildPart4(),
            const SizedBox(height: 24),

            const SizedBox(height: 48),
            _buildFooter(),
            const SizedBox(height: 24),
          ]),
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
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/vpn_key.png',
              width: 24,
            ),
            const SizedBox(width: 32),
            Text(
              'Incognitive Mode',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/gesture.png',
              width: 24,
            ),
            const SizedBox(width: 32),
            Text(
              'YouTube Studio',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        )
      ],
    );
  }

  Widget _buildPart2() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/attach_money.png',
              width: 24,
            ),
            const SizedBox(width: 32),
            Text(
              'Premium Subscription',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/insert_chart_outlined.png',
              width: 24,
            ),
            const SizedBox(width: 32),
            Text(
              'Time Watched',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/data_usage.png',
              width: 24,
            ),
            const SizedBox(width: 32),
            Text(
              'Your Data on YouTube',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        )
      ],
    );
  }

  Widget _buildPart3() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(Icons.settings, color: Colors.white),
            const SizedBox(width: 32),
            Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.question_mark_rounded, color: Colors.white),
            const SizedBox(width: 32),
            Text(
              'Help & Feedback',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildPart4() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'SWTICH ACCOUNT',
            style: TextStyle(color: Color(0xffFF2626), fontSize: 16),
          ),
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () {},
          child: Text(
            'SIGN OUT ALL ACCOUNTS',
            style: TextStyle(color: Color(0xffFF2626), fontSize: 16),
          ),
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () {},
          child: Align(
            alignment: Alignment.centerLeft, // chapga tekislaydi
            child: Text(
              'SIGN OUT',
              style: TextStyle(color: Color(0xffFF2626), fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text(
          'Privacy Policy - Terms & conditions',
          style: TextStyle(color: Color(0xffb6b6b6), fontSize: 12),
        ),
      ],
    );
}
}
