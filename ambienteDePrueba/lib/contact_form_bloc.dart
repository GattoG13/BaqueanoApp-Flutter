import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_bloc.freezed.dart';

@freezed
class ContactFormEvent with _$ContactFormEvent {
  const factory ContactFormEvent.nameChanged(String name) = NameChanged;
  const factory ContactFormEvent.emailChanged(String email) = EmailChanged;
  const factory ContactFormEvent.messageChanged(String message) = MessageChanged;
  const factory ContactFormEvent.formSubmitted() = FormSubmitted;
}

@freezed
class ContactFormState with _$ContactFormState {
  const factory ContactFormState.initial({
    @Default('') String name,
    @Default('') String email,
    @Default('') String message,
  }) = Initial;

  const factory ContactFormState.validating({
    required String name,
    required String email,
    required String message,
  }) = Validating;

  const factory ContactFormState.submitting({
    required String name,
    required String email,
    required String message,
  }) = Submitting;

  const factory ContactFormState.success({
    required String name,
    required String email,
    required String message,
  }) = Success;

  const factory ContactFormState.error({
    required String name,
    required String email,
    required String message,
    required String errorMessage,
  }) = Error;
}

class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  ContactFormBloc() : super(const ContactFormState.initial()) {
    on<NameChanged>(_onNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<MessageChanged>(_onMessageChanged);
    on<FormSubmitted>(_onFormSubmitted);
  }

  void _onNameChanged(NameChanged event, Emitter<ContactFormState> emit) {
    emit(ContactFormState.initial(
      name: event.name,
      email: state.email,
      message: state.message,
    ));
  }

  void _onEmailChanged(EmailChanged event, Emitter<ContactFormState> emit) {
    emit(ContactFormState.initial(
      name: state.name,
      email: event.email,
      message: state.message,
    ));
  }

  void _onMessageChanged(MessageChanged event, Emitter<ContactFormState> emit) {
    emit(ContactFormState.initial(
      name: state.name,
      email: state.email,
      message: event.message,
    ));
  }

  Future<void> _onFormSubmitted(FormSubmitted event, Emitter<ContactFormState> emit) async {
    final name = state.name.trim();
    final email = state.email.trim();
    final message = state.message.trim();

    // Validaciones básicas
    if (name.length < 3) {
      emit(ContactFormState.error(
        name: name,
        email: email,
        message: message,
        errorMessage: 'El nombre debe tener al menos 3 caracteres.',
      ));
      return;
    }

    if (!email.contains('@') || !email.contains('.')) {
      emit(ContactFormState.error(
        name: name,
        email: email,
        message: message,
        errorMessage: 'El email no es válido.',
      ));
      return;
    }

    if (message.isEmpty) {
      emit(ContactFormState.error(
        name: name,
        email: email,
        message: message,
        errorMessage: 'El mensaje no puede estar vacío.',
      ));
      return;
    }

    emit(ContactFormState.submitting(
      name: name,
      email: email,
      message: message,
    ));

    // Simulación de envío
    await Future.delayed(const Duration(seconds: 2));

    emit(ContactFormState.success(
      name: name,
      email: email,
      message: message,
    ));
  }
}
