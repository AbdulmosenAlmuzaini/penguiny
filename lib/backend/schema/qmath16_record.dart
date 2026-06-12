import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Qmath16Record extends FirestoreRecord {
  Qmath16Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Q_number" field.
  int? _qNumber;
  int get qNumber => _qNumber ?? 0;
  bool hasQNumber() => _qNumber != null;

  // "Q_type" field.
  String? _qType;
  String get qType => _qType ?? '';
  bool hasQType() => _qType != null;

  // "Q_text" field.
  String? _qText;
  String get qText => _qText ?? '';
  bool hasQText() => _qText != null;

  // "Q_img" field.
  String? _qImg;
  String get qImg => _qImg ?? '';
  bool hasQImg() => _qImg != null;

  // "Answer_type" field.
  String? _answerType;
  String get answerType => _answerType ?? '';
  bool hasAnswerType() => _answerType != null;

  // "Answer_text" field.
  List<String>? _answerText;
  List<String> get answerText => _answerText ?? const [];
  bool hasAnswerText() => _answerText != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "Answer_img" field.
  List<String>? _answerImg;
  List<String> get answerImg => _answerImg ?? const [];
  bool hasAnswerImg() => _answerImg != null;

  // "Answer_option" field.
  List<String>? _answerOption;
  List<String> get answerOption => _answerOption ?? const [];
  bool hasAnswerOption() => _answerOption != null;

  // "correctOption" field.
  String? _correctOption;
  String get correctOption => _correctOption ?? '';
  bool hasCorrectOption() => _correctOption != null;

  void _initializeFields() {
    _qNumber = castToType<int>(snapshotData['Q_number']);
    _qType = snapshotData['Q_type'] as String?;
    _qText = snapshotData['Q_text'] as String?;
    _qImg = snapshotData['Q_img'] as String?;
    _answerType = snapshotData['Answer_type'] as String?;
    _answerText = getDataList(snapshotData['Answer_text']);
    _correctAnswer = snapshotData['correctAnswer'] as String?;
    _answerImg = getDataList(snapshotData['Answer_img']);
    _answerOption = getDataList(snapshotData['Answer_option']);
    _correctOption = snapshotData['correctOption'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Qmath16');

  static Stream<Qmath16Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Qmath16Record.fromSnapshot(s));

  static Future<Qmath16Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Qmath16Record.fromSnapshot(s));

  static Qmath16Record fromSnapshot(DocumentSnapshot snapshot) =>
      Qmath16Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Qmath16Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Qmath16Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Qmath16Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Qmath16Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQmath16RecordData({
  int? qNumber,
  String? qType,
  String? qText,
  String? qImg,
  String? answerType,
  String? correctAnswer,
  String? correctOption,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Q_number': qNumber,
      'Q_type': qType,
      'Q_text': qText,
      'Q_img': qImg,
      'Answer_type': answerType,
      'correctAnswer': correctAnswer,
      'correctOption': correctOption,
    }.withoutNulls,
  );

  return firestoreData;
}

class Qmath16RecordDocumentEquality implements Equality<Qmath16Record> {
  const Qmath16RecordDocumentEquality();

  @override
  bool equals(Qmath16Record? e1, Qmath16Record? e2) {
    const listEquality = ListEquality();
    return e1?.qNumber == e2?.qNumber &&
        e1?.qType == e2?.qType &&
        e1?.qText == e2?.qText &&
        e1?.qImg == e2?.qImg &&
        e1?.answerType == e2?.answerType &&
        listEquality.equals(e1?.answerText, e2?.answerText) &&
        e1?.correctAnswer == e2?.correctAnswer &&
        listEquality.equals(e1?.answerImg, e2?.answerImg) &&
        listEquality.equals(e1?.answerOption, e2?.answerOption) &&
        e1?.correctOption == e2?.correctOption;
  }

  @override
  int hash(Qmath16Record? e) => const ListEquality().hash([
        e?.qNumber,
        e?.qType,
        e?.qText,
        e?.qImg,
        e?.answerType,
        e?.answerText,
        e?.correctAnswer,
        e?.answerImg,
        e?.answerOption,
        e?.correctOption
      ]);

  @override
  bool isValidKey(Object? o) => o is Qmath16Record;
}
