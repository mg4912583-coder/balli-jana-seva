import 'package:flutter/material.dart';

class ServiceFormPage extends StatefulWidget {
  final String serviceName;

  const ServiceFormPage({
    super.key,
    required this.serviceName,
  });

  @override
  State<ServiceFormPage> createState() => _ServiceFormPageState();
}

class _ServiceFormPageState extends State<ServiceFormPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final detailsController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    detailsController.dispose();
    super.dispose();
  }

  void submitApplication() {
    if (nameController.text.trim().isEmpty ||
        mobileController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name ಮತ್ತು Mobile Number ನಮೂದಿಸಿ'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Application submitted successfully'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.serviceName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Text(
              widget.serviceName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Applicant Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: mobileController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: detailsController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Service Details',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.description),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton.icon(
                onPressed: submitApplication,
                icon: const Icon(Icons.send),
                label: const Text(
                  'SUBMIT APPLICATION',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
