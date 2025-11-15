import 'package:_10_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:_10_note_app/views/widgets/add_note_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
              if (state is AddNoteFailure) {
                print("Failed ${state.errorMessage}");
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
