import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/qchemistry1_record.dart';
import 'schema/qchemisrty2_record.dart';
import 'schema/qchemistry3_record.dart';
import 'schema/qchemistry4_record.dart';
import 'schema/qchemistry5_record.dart';
import 'schema/qchemistry6_record.dart';
import 'schema/qchemistry7_record.dart';
import 'schema/qchemistry8_record.dart';
import 'schema/qchemistry9_record.dart';
import 'schema/qchemistry10_record.dart';
import 'schema/qchemistry11_record.dart';
import 'schema/q_biology1_record.dart';
import 'schema/qbiology2_record.dart';
import 'schema/qbiology3_record.dart';
import 'schema/qbiology4_record.dart';
import 'schema/qbiology5_record.dart';
import 'schema/qbiology6_record.dart';
import 'schema/qbiology7_record.dart';
import 'schema/qbiology8_record.dart';
import 'schema/qbiology9_record.dart';
import 'schema/qbiology10_record.dart';
import 'schema/qbiology11_record.dart';
import 'schema/qmath1_record.dart';
import 'schema/qmath2_record.dart';
import 'schema/qmath3_record.dart';
import 'schema/qphysics1_record.dart';
import 'schema/qphysics2_record.dart';
import 'schema/qphysics3_record.dart';
import 'schema/qphysics4_record.dart';
import 'schema/qphysics5_record.dart';
import 'schema/qphysics6_record.dart';
import 'schema/qphysics7_record.dart';
import 'schema/qphysics8_record.dart';
import 'schema/qphysics9_record.dart';
import 'schema/qphysics10_record.dart';
import 'schema/qmath4_record.dart';
import 'schema/qmath5_record.dart';
import 'schema/qmath6_record.dart';
import 'schema/qmath7_record.dart';
import 'schema/qmath8_record.dart';
import 'schema/qmath9_record.dart';
import 'schema/qmath10_record.dart';
import 'schema/qmath11_record.dart';
import 'schema/qmath12_record.dart';
import 'schema/qmath13_record.dart';
import 'schema/qmath14_record.dart';
import 'schema/qmath15_record.dart';
import 'schema/qmath16_record.dart';
import 'schema/qmath17_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/qchemistry1_record.dart';
export 'schema/qchemisrty2_record.dart';
export 'schema/qchemistry3_record.dart';
export 'schema/qchemistry4_record.dart';
export 'schema/qchemistry5_record.dart';
export 'schema/qchemistry6_record.dart';
export 'schema/qchemistry7_record.dart';
export 'schema/qchemistry8_record.dart';
export 'schema/qchemistry9_record.dart';
export 'schema/qchemistry10_record.dart';
export 'schema/qchemistry11_record.dart';
export 'schema/q_biology1_record.dart';
export 'schema/qbiology2_record.dart';
export 'schema/qbiology3_record.dart';
export 'schema/qbiology4_record.dart';
export 'schema/qbiology5_record.dart';
export 'schema/qbiology6_record.dart';
export 'schema/qbiology7_record.dart';
export 'schema/qbiology8_record.dart';
export 'schema/qbiology9_record.dart';
export 'schema/qbiology10_record.dart';
export 'schema/qbiology11_record.dart';
export 'schema/qmath1_record.dart';
export 'schema/qmath2_record.dart';
export 'schema/qmath3_record.dart';
export 'schema/qphysics1_record.dart';
export 'schema/qphysics2_record.dart';
export 'schema/qphysics3_record.dart';
export 'schema/qphysics4_record.dart';
export 'schema/qphysics5_record.dart';
export 'schema/qphysics6_record.dart';
export 'schema/qphysics7_record.dart';
export 'schema/qphysics8_record.dart';
export 'schema/qphysics9_record.dart';
export 'schema/qphysics10_record.dart';
export 'schema/qmath4_record.dart';
export 'schema/qmath5_record.dart';
export 'schema/qmath6_record.dart';
export 'schema/qmath7_record.dart';
export 'schema/qmath8_record.dart';
export 'schema/qmath9_record.dart';
export 'schema/qmath10_record.dart';
export 'schema/qmath11_record.dart';
export 'schema/qmath12_record.dart';
export 'schema/qmath13_record.dart';
export 'schema/qmath14_record.dart';
export 'schema/qmath15_record.dart';
export 'schema/qmath16_record.dart';
export 'schema/qmath17_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry1Records (as a Stream and as a Future).
Future<int> queryQchemistry1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry1Record>> queryQchemistry1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry1Record.collection,
      Qchemistry1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry1Record>> queryQchemistry1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry1Record.collection,
      Qchemistry1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemisrty2Records (as a Stream and as a Future).
Future<int> queryQchemisrty2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemisrty2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemisrty2Record>> queryQchemisrty2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemisrty2Record.collection,
      Qchemisrty2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemisrty2Record>> queryQchemisrty2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemisrty2Record.collection,
      Qchemisrty2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry3Records (as a Stream and as a Future).
Future<int> queryQchemistry3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry3Record>> queryQchemistry3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry3Record.collection,
      Qchemistry3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry3Record>> queryQchemistry3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry3Record.collection,
      Qchemistry3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry4Records (as a Stream and as a Future).
Future<int> queryQchemistry4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry4Record>> queryQchemistry4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry4Record.collection,
      Qchemistry4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry4Record>> queryQchemistry4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry4Record.collection,
      Qchemistry4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry5Records (as a Stream and as a Future).
Future<int> queryQchemistry5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry5Record>> queryQchemistry5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry5Record.collection,
      Qchemistry5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry5Record>> queryQchemistry5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry5Record.collection,
      Qchemistry5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry6Records (as a Stream and as a Future).
Future<int> queryQchemistry6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry6Record>> queryQchemistry6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry6Record.collection,
      Qchemistry6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry6Record>> queryQchemistry6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry6Record.collection,
      Qchemistry6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry7Records (as a Stream and as a Future).
Future<int> queryQchemistry7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry7Record>> queryQchemistry7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry7Record.collection,
      Qchemistry7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry7Record>> queryQchemistry7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry7Record.collection,
      Qchemistry7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry8Records (as a Stream and as a Future).
Future<int> queryQchemistry8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry8Record>> queryQchemistry8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry8Record.collection,
      Qchemistry8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry8Record>> queryQchemistry8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry8Record.collection,
      Qchemistry8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry9Records (as a Stream and as a Future).
Future<int> queryQchemistry9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry9Record>> queryQchemistry9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry9Record.collection,
      Qchemistry9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry9Record>> queryQchemistry9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry9Record.collection,
      Qchemistry9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry10Records (as a Stream and as a Future).
Future<int> queryQchemistry10RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry10Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry10Record>> queryQchemistry10Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry10Record.collection,
      Qchemistry10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry10Record>> queryQchemistry10RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry10Record.collection,
      Qchemistry10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qchemistry11Records (as a Stream and as a Future).
Future<int> queryQchemistry11RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qchemistry11Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qchemistry11Record>> queryQchemistry11Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qchemistry11Record.collection,
      Qchemistry11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qchemistry11Record>> queryQchemistry11RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qchemistry11Record.collection,
      Qchemistry11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query QBiology1Records (as a Stream and as a Future).
Future<int> queryQBiology1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      QBiology1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<QBiology1Record>> queryQBiology1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      QBiology1Record.collection,
      QBiology1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<QBiology1Record>> queryQBiology1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      QBiology1Record.collection,
      QBiology1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology2Records (as a Stream and as a Future).
Future<int> queryQbiology2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology2Record>> queryQbiology2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology2Record.collection,
      Qbiology2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology2Record>> queryQbiology2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology2Record.collection,
      Qbiology2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology3Records (as a Stream and as a Future).
Future<int> queryQbiology3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology3Record>> queryQbiology3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology3Record.collection,
      Qbiology3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology3Record>> queryQbiology3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology3Record.collection,
      Qbiology3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology4Records (as a Stream and as a Future).
Future<int> queryQbiology4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology4Record>> queryQbiology4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology4Record.collection,
      Qbiology4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology4Record>> queryQbiology4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology4Record.collection,
      Qbiology4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology5Records (as a Stream and as a Future).
Future<int> queryQbiology5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology5Record>> queryQbiology5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology5Record.collection,
      Qbiology5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology5Record>> queryQbiology5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology5Record.collection,
      Qbiology5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology6Records (as a Stream and as a Future).
Future<int> queryQbiology6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology6Record>> queryQbiology6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology6Record.collection,
      Qbiology6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology6Record>> queryQbiology6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology6Record.collection,
      Qbiology6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology7Records (as a Stream and as a Future).
Future<int> queryQbiology7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology7Record>> queryQbiology7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology7Record.collection,
      Qbiology7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology7Record>> queryQbiology7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology7Record.collection,
      Qbiology7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology8Records (as a Stream and as a Future).
Future<int> queryQbiology8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology8Record>> queryQbiology8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology8Record.collection,
      Qbiology8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology8Record>> queryQbiology8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology8Record.collection,
      Qbiology8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology9Records (as a Stream and as a Future).
Future<int> queryQbiology9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology9Record>> queryQbiology9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology9Record.collection,
      Qbiology9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology9Record>> queryQbiology9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology9Record.collection,
      Qbiology9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology10Records (as a Stream and as a Future).
Future<int> queryQbiology10RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology10Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology10Record>> queryQbiology10Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology10Record.collection,
      Qbiology10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology10Record>> queryQbiology10RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology10Record.collection,
      Qbiology10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qbiology11Records (as a Stream and as a Future).
Future<int> queryQbiology11RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qbiology11Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qbiology11Record>> queryQbiology11Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qbiology11Record.collection,
      Qbiology11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qbiology11Record>> queryQbiology11RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qbiology11Record.collection,
      Qbiology11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath1Records (as a Stream and as a Future).
Future<int> queryQmath1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath1Record>> queryQmath1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath1Record.collection,
      Qmath1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath1Record>> queryQmath1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath1Record.collection,
      Qmath1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath2Records (as a Stream and as a Future).
Future<int> queryQmath2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath2Record>> queryQmath2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath2Record.collection,
      Qmath2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath2Record>> queryQmath2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath2Record.collection,
      Qmath2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath3Records (as a Stream and as a Future).
Future<int> queryQmath3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath3Record>> queryQmath3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath3Record.collection,
      Qmath3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath3Record>> queryQmath3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath3Record.collection,
      Qmath3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics1Records (as a Stream and as a Future).
Future<int> queryQphysics1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics1Record>> queryQphysics1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics1Record.collection,
      Qphysics1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics1Record>> queryQphysics1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics1Record.collection,
      Qphysics1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics2Records (as a Stream and as a Future).
Future<int> queryQphysics2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics2Record>> queryQphysics2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics2Record.collection,
      Qphysics2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics2Record>> queryQphysics2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics2Record.collection,
      Qphysics2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics3Records (as a Stream and as a Future).
Future<int> queryQphysics3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics3Record>> queryQphysics3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics3Record.collection,
      Qphysics3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics3Record>> queryQphysics3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics3Record.collection,
      Qphysics3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics4Records (as a Stream and as a Future).
Future<int> queryQphysics4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics4Record>> queryQphysics4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics4Record.collection,
      Qphysics4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics4Record>> queryQphysics4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics4Record.collection,
      Qphysics4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics5Records (as a Stream and as a Future).
Future<int> queryQphysics5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics5Record>> queryQphysics5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics5Record.collection,
      Qphysics5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics5Record>> queryQphysics5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics5Record.collection,
      Qphysics5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics6Records (as a Stream and as a Future).
Future<int> queryQphysics6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics6Record>> queryQphysics6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics6Record.collection,
      Qphysics6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics6Record>> queryQphysics6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics6Record.collection,
      Qphysics6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics7Records (as a Stream and as a Future).
Future<int> queryQphysics7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics7Record>> queryQphysics7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics7Record.collection,
      Qphysics7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics7Record>> queryQphysics7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics7Record.collection,
      Qphysics7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics8Records (as a Stream and as a Future).
Future<int> queryQphysics8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics8Record>> queryQphysics8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics8Record.collection,
      Qphysics8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics8Record>> queryQphysics8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics8Record.collection,
      Qphysics8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics9Records (as a Stream and as a Future).
Future<int> queryQphysics9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics9Record>> queryQphysics9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics9Record.collection,
      Qphysics9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics9Record>> queryQphysics9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics9Record.collection,
      Qphysics9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qphysics10Records (as a Stream and as a Future).
Future<int> queryQphysics10RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qphysics10Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qphysics10Record>> queryQphysics10Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qphysics10Record.collection,
      Qphysics10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qphysics10Record>> queryQphysics10RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qphysics10Record.collection,
      Qphysics10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath4Records (as a Stream and as a Future).
Future<int> queryQmath4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath4Record>> queryQmath4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath4Record.collection,
      Qmath4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath4Record>> queryQmath4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath4Record.collection,
      Qmath4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath5Records (as a Stream and as a Future).
Future<int> queryQmath5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath5Record>> queryQmath5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath5Record.collection,
      Qmath5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath5Record>> queryQmath5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath5Record.collection,
      Qmath5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath6Records (as a Stream and as a Future).
Future<int> queryQmath6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath6Record>> queryQmath6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath6Record.collection,
      Qmath6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath6Record>> queryQmath6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath6Record.collection,
      Qmath6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath7Records (as a Stream and as a Future).
Future<int> queryQmath7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath7Record>> queryQmath7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath7Record.collection,
      Qmath7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath7Record>> queryQmath7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath7Record.collection,
      Qmath7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath8Records (as a Stream and as a Future).
Future<int> queryQmath8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath8Record>> queryQmath8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath8Record.collection,
      Qmath8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath8Record>> queryQmath8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath8Record.collection,
      Qmath8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath9Records (as a Stream and as a Future).
Future<int> queryQmath9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath9Record>> queryQmath9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath9Record.collection,
      Qmath9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath9Record>> queryQmath9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath9Record.collection,
      Qmath9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath10Records (as a Stream and as a Future).
Future<int> queryQmath10RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath10Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath10Record>> queryQmath10Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath10Record.collection,
      Qmath10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath10Record>> queryQmath10RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath10Record.collection,
      Qmath10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath11Records (as a Stream and as a Future).
Future<int> queryQmath11RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath11Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath11Record>> queryQmath11Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath11Record.collection,
      Qmath11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath11Record>> queryQmath11RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath11Record.collection,
      Qmath11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath12Records (as a Stream and as a Future).
Future<int> queryQmath12RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath12Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath12Record>> queryQmath12Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath12Record.collection,
      Qmath12Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath12Record>> queryQmath12RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath12Record.collection,
      Qmath12Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath13Records (as a Stream and as a Future).
Future<int> queryQmath13RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath13Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath13Record>> queryQmath13Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath13Record.collection,
      Qmath13Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath13Record>> queryQmath13RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath13Record.collection,
      Qmath13Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath14Records (as a Stream and as a Future).
Future<int> queryQmath14RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath14Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath14Record>> queryQmath14Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath14Record.collection,
      Qmath14Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath14Record>> queryQmath14RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath14Record.collection,
      Qmath14Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath15Records (as a Stream and as a Future).
Future<int> queryQmath15RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath15Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath15Record>> queryQmath15Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath15Record.collection,
      Qmath15Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath15Record>> queryQmath15RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath15Record.collection,
      Qmath15Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath16Records (as a Stream and as a Future).
Future<int> queryQmath16RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath16Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath16Record>> queryQmath16Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath16Record.collection,
      Qmath16Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath16Record>> queryQmath16RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath16Record.collection,
      Qmath16Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Qmath17Records (as a Stream and as a Future).
Future<int> queryQmath17RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Qmath17Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Qmath17Record>> queryQmath17Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Qmath17Record.collection,
      Qmath17Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Qmath17Record>> queryQmath17RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Qmath17Record.collection,
      Qmath17Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
