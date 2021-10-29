import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/common/constants.dart';

import 'package:note_app/common/strings.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/components/components.dart';
import 'package:note_app/presentation/routes/routes.dart';
import 'package:note_app/presentation/theme/spacing.dart';

import 'widgets/note_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NoteAppBar(
        autoImplementLeading: false,
        title: StringConstants.homeAppBarTitle,
        actions: [
          AppButton(
            child: const Icon(FeatherIcons.search),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(AddUpdateNoteRoute());
        },
        child: const Icon(FeatherIcons.plus),
      ),
      body: _BuildNotesList(notes: notes),
    );
  }
}

class _BuildNotesList extends StatelessWidget {
  const _BuildNotesList({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacings.xl.w,
        vertical: AppSpacings.xl.h,
      ),
      crossAxisCount: 2,
      shrinkWrap: true,
      itemCount: notes.length,
      itemBuilder: (BuildContext context, int index) {
        return NoteCard(note: notes[index]);
      },
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: AppSpacings.l.h,
      crossAxisSpacing: AppSpacings.l.w,
    );
  }
}

final notes = [
  Note(
    color: colors.first,
    dateTime: DateTime.now(),
    title:
        'etfy eyteyf ye  ert yertfy  ergf eyf yef fer e sdt ywt fyteyft y In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
    description: 'this is description text',
  ),
  Note(
    color: colors[2],
    dateTime: DateTime.now(),
    title:
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
    description:
        'etfy eyteyf ye  ert yertfy  ergf eyf yef fer e sdt ywt fyteyft y In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. etfy eyteyf ye  ert yertfy  ergf eyf yef fer e sdt ywt fyteyft y In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
  ),
  Note(
    color: colors[1],
    dateTime: DateTime.now(),
    title: 'This is title suyeyf ',
    description: 'this is description text',
  ),
  Note(
    color: colors.last,
    dateTime: DateTime.now(),
    title: 'This is tile',
    description: 'this is description text',
  ),
  Note(
    color: colors[2],
    dateTime: DateTime.now(),
    title:
        'etfy eyteyf ye  ert yertfy  ergf eyf yef fer e sdt ywt fyteyft y In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
    description: 'this is description text',
  ),
  Note(
    color: colors[3],
    dateTime: DateTime.now(),
    title: 'This is tile dfdy e ge dveh eryf y',
    description: 'this is description text',
  ),
  Note(
    color: colors[4],
    dateTime: DateTime.now(),
    title: 'This is tile',
    description: 'this is description text',
  ),
  Note(
    color: colors.last,
    dateTime: DateTime.now(),
    title:
        'etfy eyteyf ye  ert yertfy  ergf eyf yef fer e sdt ywt fyteyft y In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
    description: 'this is description text',
  ),
];
