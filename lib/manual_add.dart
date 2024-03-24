import 'package:flutter/material.dart';

class ManualAdd extends StatelessWidget {
  const ManualAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add book manually'),
      ),
      body: const ManuForm(),
    );
  }
}

class ManuForm extends StatefulWidget {
  const ManuForm({super.key});

  @override
  State<ManuForm> createState() => _ManuFormState();
}

class _ManuFormState extends State<ManuForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Author(s)',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Publisher',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Pages',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Publication year',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Additional info',
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 120),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
