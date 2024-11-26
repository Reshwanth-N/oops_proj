import 'package:flutter/material.dart';
import '../models/user_stats.dart';
import '../models/user_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserStats _userStats = UserStats();
  final UserData _userData = UserData();

  // Update controllers to use UserData
  late final TextEditingController _nameController;
  late final TextEditingController _ageController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: _userData.name);
    _ageController = TextEditingController(text: _userData.age);
    _emailController = TextEditingController(text: _userData.email);
    _phoneController = TextEditingController(text: _userData.phone);
  }

  void _showEditDialog(String title, TextEditingController controller, IconData icon) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(icon, color: Colors.cyan),
            const SizedBox(width: 8),
            Text('Edit $title'),
          ],
        ),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Enter new $title',
            prefixIcon: Icon(icon),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Update the persistent data
                switch (title) {
                  case 'Name':
                    _userData.updateName(controller.text);
                    break;
                  case 'Age':
                    _userData.updateAge(controller.text);
                    break;
                  case 'Email':
                    _userData.updateEmail(controller.text);
                    break;
                  case 'Phone':
                    _userData.updatePhone(controller.text);
                    break;
                }
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$title updated successfully'),
                  backgroundColor: Colors.cyan,
                ),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableInfoItem({
    required IconData icon,
    required String label,
    required TextEditingController controller,
    Color? valueColor,
    bool isLink = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: Colors.cyan),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                ),
                const SizedBox(height: 4),
                Text(
                  controller.text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: valueColor ?? Colors.white,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit, size: 20, color: Colors.cyan),
            onPressed: () => _showEditDialog(label, controller, icon),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PROFILE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.grey[900]!,
              Colors.black,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture Section
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan.withOpacity(0.5),
                            blurRadius: 20,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.cyan,
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Updated Personal Information Card
              _buildInfoCard(
                title: 'Personal Information',
                items: [
                  _buildEditableInfoItem(
                    icon: Icons.person_outline,
                    label: 'Name',
                    controller: _nameController,
                  ),
                  _buildEditableInfoItem(
                    icon: Icons.cake_outlined,
                    label: 'Age',
                    controller: _ageController,
                  ),
                  _buildEditableInfoItem(
                    icon: Icons.email_outlined,
                    label: 'Email',
                    controller: _emailController,
                  ),
                  _buildEditableInfoItem(
                    icon: Icons.phone_outlined,
                    label: 'Phone',
                    controller: _phoneController,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Account Balance Card
              _buildInfoCard(
                title: 'Account Details',
                items: [
                  _buildInfoItem(
                    icon: Icons.account_balance_wallet_outlined,
                    label: 'Balance',
                    value: '₹5,240.00',
                    valueColor: Colors.cyan,
                  ),
                  _buildInfoItem(
                    icon: Icons.shopping_bag_outlined,
                    label: 'Total Orders',
                    value: '12',
                  ),
                  _buildInfoItem(
                    icon: Icons.sell_outlined,
                    label: 'Items Sold',
                    value: '${_userStats.itemsSold}',
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Settings Card
              _buildInfoCard(
                title: 'Settings & Privacy',
                items: [
                  _buildInfoItem(
                    icon: Icons.security_outlined,
                    label: 'Privacy Settings',
                    value: 'Manage',
                    isLink: true,
                  ),
                  _buildInfoItem(
                    icon: Icons.notifications_outlined,
                    label: 'Notifications',
                    value: 'Enabled',
                    isLink: true,
                  ),
                  _buildInfoItem(
                    icon: Icons.payment_outlined,
                    label: 'Payment Methods',
                    value: 'View All',
                    isLink: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}

Widget _buildInfoCard({
  required String title,
  required List<Widget> items,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.cyan.withOpacity(0.1),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 16),
            ...items,
          ],
        ),
      ),
    ),
  );
}

Widget _buildInfoItem({
  required IconData icon,
  required String label,
  required String value,
  Color? valueColor,
  bool isLink = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.cyan.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 20,
            color: Colors.cyan,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: valueColor ?? Colors.white,
                ),
              ),
            ],
          ),
        ),
        if (isLink)
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.cyan,
          ),
      ],
    ),
  );
} 