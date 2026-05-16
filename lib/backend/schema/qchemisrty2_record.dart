import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Qchemisrty2Record extends FirestoreRecord {
  Qchemisrty2Record._(
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
      FirebaseFirestore.instance.collection('Qchemisrty2');

  static Stream<Qchemisrty2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Qchemisrty2Record.fromSnapshot(s));

  static Future<Qchemisrty2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Qchemisrty2Record.fromSnapshot(s));

  static Qchemisrty2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Qchemisrty2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Qchemisrty2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Qchemisrty2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Qchemisrty2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Qchemisrty2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQchemisrty2RecordData({
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

class Qchemisrty2RecordDocumentEquality implements Equality<Qchemisrty2Record> {
  const Qchemisrty2RecordDocumentEquality();

  @override
  bool equals(Qchemisrty2Record? e1, Qchemisrty2Record? e2) {
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
  int hash(Qchemisrty2Record? e) => const ListEquality().hash([
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
  bool isValidKey(Object? o) => o is Qchemisrty2Record;
}
