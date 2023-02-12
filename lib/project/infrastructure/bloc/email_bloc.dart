import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../api/email_repository.dart';

part 'email_event.dart';

part 'email_state.dart';


class EmailBloc extends Bloc<EmailEvent, EmailState> {
  late final EmailRepository _emailRepository;

  EmailBloc(super.initialState);
  //
  // EmailState get initialState => EmailState.initial();
  //
  // EmailBloc(this._emailRepository) : super(EmailState.initial());
  //
  // @override
  //
  // @override
  // Stream<EmailState> mapEventToState(
  //   EmailEvent event,
  // ) async* {
  //   if (event is EmailEvent) {
  //     yield EmailState.sendingEmail();
  //
  //     final response = await _emailRepository.sendEmail(
  //       name: event.name,
  //       email: event.email,
  //       subject: event.subject,
  //       message: event.message,
  //     );
  //
  //     yield* response.fold(
  //       (failure) async* {
  //         yield EmailState.failure();
  //       },
  //       (data) async* {
  //         yield EmailState.emailSentSuccessFully();
  //       },
  //     );
  //   }
  // }
}