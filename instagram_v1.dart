
import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramProfileApp());
}

class InstagramProfileApp extends StatelessWidget {
  const InstagramProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Profile'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: const ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        // Ảnh đại diện và thông tin tổng quát
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Ảnh đại diện
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://www.example.com/profile.jpg', // Đổi URL này
              ),
            ),
            // Số bài đăng, người theo dõi, đang theo dõi
            Column(
              children: const [
                Text(
                  '12',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('Posts'),
              ],
            ),
            Column(
              children: const [
                Text(
                  '1200',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('Followers'),
              ],
            ),
            Column(
              children: const [
                Text(
                  '300',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('Following'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Tên tài khoản
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Your Name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        // Tiểu sử
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Bio goes here...',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        // Nút Follow hoặc Message
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Follow'),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Message'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Bộ sưu tập bài đăng
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: 12, // Số lượng bài đăng
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey[300],
                child: Image.network(
                  'https://www.example.com/post_$index.jpg', // Đổi URL này
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
