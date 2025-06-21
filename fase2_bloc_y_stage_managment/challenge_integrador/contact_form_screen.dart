import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'contact_form_bloc.dart';

class ContactFormScreen extends StatelessWidget {
  const ContactFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactFormBloc(),
      child: const ContactFormView(),
    );
  }
}

class ContactFormView extends StatelessWidget {
  const ContactFormView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContactFormBloc>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Formulario de contacto')),
      body: BlocListener<ContactFormBloc, ContactFormState>(
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
            );
          } else if (state is Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Formulario enviado correctamente')),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                onChanged: (value) =>
                    bloc.add(ContactFormEvent.nameChanged(value)),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) =>
                    bloc.add(ContactFormEvent.emailChanged(value)),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(labelText: 'Mensaje'),
                maxLines: 4,
                onChanged: (value) =>
                    bloc.add(ContactFormEvent.messageChanged(value)),
              ),
              const SizedBox(height: 24),
              BlocBuilder<ContactFormBloc, ContactFormState>(
                builder: (context, state) {
                  final isLoading = state is Submitting;

                  return ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            bloc.add(const ContactFormEvent.formSubmitted());
                          },
                    child: isLoading
                        ? const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                        : const Text('Enviar'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
