
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? emailController;
  const TextInputField({
    this.emailController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.email_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
            hintText: "Email",
            hintStyle: TextStyle(fontSize: 22, color: Colors.white),
          ),
          style: const TextStyle(fontSize: 22, color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}