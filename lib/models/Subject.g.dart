// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Subject.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSubjectCollection on Isar {
  IsarCollection<Subject> get subjects => this.collection();
}

const SubjectSchema = CollectionSchema(
  name: r'Subject',
  id: 7648000959054204885,
  properties: {
    r'aula': PropertySchema(
      id: 0,
      name: r'aula',
      type: IsarType.string,
    ),
    r'day': PropertySchema(
      id: 1,
      name: r'day',
      type: IsarType.string,
    ),
    r'horaEntrada': PropertySchema(
      id: 2,
      name: r'horaEntrada',
      type: IsarType.string,
    ),
    r'horaSalida': PropertySchema(
      id: 3,
      name: r'horaSalida',
      type: IsarType.string,
    ),
    r'modalidad': PropertySchema(
      id: 4,
      name: r'modalidad',
      type: IsarType.string,
    ),
    r'subjectName': PropertySchema(
      id: 5,
      name: r'subjectName',
      type: IsarType.string,
    )
  },
  estimateSize: _subjectEstimateSize,
  serialize: _subjectSerialize,
  deserialize: _subjectDeserialize,
  deserializeProp: _subjectDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'univesity': LinkSchema(
      id: -8774631824382548407,
      name: r'univesity',
      target: r'University',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _subjectGetId,
  getLinks: _subjectGetLinks,
  attach: _subjectAttach,
  version: '3.1.0+1',
);

int _subjectEstimateSize(
  Subject object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aula;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.day;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.horaEntrada;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.horaSalida;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.modalidad;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subjectName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _subjectSerialize(
  Subject object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aula);
  writer.writeString(offsets[1], object.day);
  writer.writeString(offsets[2], object.horaEntrada);
  writer.writeString(offsets[3], object.horaSalida);
  writer.writeString(offsets[4], object.modalidad);
  writer.writeString(offsets[5], object.subjectName);
}

Subject _subjectDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Subject();
  object.aula = reader.readStringOrNull(offsets[0]);
  object.day = reader.readStringOrNull(offsets[1]);
  object.horaEntrada = reader.readStringOrNull(offsets[2]);
  object.horaSalida = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.modalidad = reader.readStringOrNull(offsets[4]);
  object.subjectName = reader.readStringOrNull(offsets[5]);
  return object;
}

P _subjectDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _subjectGetId(Subject object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _subjectGetLinks(Subject object) {
  return [object.univesity];
}

void _subjectAttach(IsarCollection<dynamic> col, Id id, Subject object) {
  object.id = id;
  object.univesity
      .attach(col, col.isar.collection<University>(), r'univesity', id);
}

extension SubjectQueryWhereSort on QueryBuilder<Subject, Subject, QWhere> {
  QueryBuilder<Subject, Subject, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SubjectQueryWhere on QueryBuilder<Subject, Subject, QWhereClause> {
  QueryBuilder<Subject, Subject, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Subject, Subject, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Subject, Subject, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Subject, Subject, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SubjectQueryFilter
    on QueryBuilder<Subject, Subject, QFilterCondition> {
  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aula',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aula',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aula',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aula',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> aulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aula',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'day',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'day',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'day',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'day',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'day',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> dayIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'day',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'horaEntrada',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'horaEntrada',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'horaEntrada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'horaEntrada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'horaEntrada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaEntradaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'horaEntrada',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition>
      horaEntradaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'horaEntrada',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'horaSalida',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'horaSalida',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'horaSalida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'horaSalida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'horaSalida',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'horaSalida',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> horaSalidaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'horaSalida',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modalidad',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modalidad',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modalidad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modalidad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modalidad',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modalidad',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> modalidadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modalidad',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subjectName',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subjectName',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subjectName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subjectName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> subjectNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectName',
        value: '',
      ));
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition>
      subjectNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subjectName',
        value: '',
      ));
    });
  }
}

extension SubjectQueryObject
    on QueryBuilder<Subject, Subject, QFilterCondition> {}

extension SubjectQueryLinks
    on QueryBuilder<Subject, Subject, QFilterCondition> {
  QueryBuilder<Subject, Subject, QAfterFilterCondition> univesity(
      FilterQuery<University> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'univesity');
    });
  }

  QueryBuilder<Subject, Subject, QAfterFilterCondition> univesityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'univesity', 0, true, 0, true);
    });
  }
}

extension SubjectQuerySortBy on QueryBuilder<Subject, Subject, QSortBy> {
  QueryBuilder<Subject, Subject, QAfterSortBy> sortByAula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aula', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByAulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aula', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByHoraEntrada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaEntrada', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByHoraEntradaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaEntrada', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByHoraSalida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaSalida', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByHoraSalidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaSalida', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByModalidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modalidad', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortByModalidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modalidad', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortBySubjectName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> sortBySubjectNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.desc);
    });
  }
}

extension SubjectQuerySortThenBy
    on QueryBuilder<Subject, Subject, QSortThenBy> {
  QueryBuilder<Subject, Subject, QAfterSortBy> thenByAula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aula', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByAulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aula', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByHoraEntrada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaEntrada', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByHoraEntradaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaEntrada', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByHoraSalida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaSalida', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByHoraSalidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'horaSalida', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByModalidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modalidad', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenByModalidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modalidad', Sort.desc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenBySubjectName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.asc);
    });
  }

  QueryBuilder<Subject, Subject, QAfterSortBy> thenBySubjectNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.desc);
    });
  }
}

extension SubjectQueryWhereDistinct
    on QueryBuilder<Subject, Subject, QDistinct> {
  QueryBuilder<Subject, Subject, QDistinct> distinctByAula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subject, Subject, QDistinct> distinctByDay(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'day', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subject, Subject, QDistinct> distinctByHoraEntrada(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'horaEntrada', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subject, Subject, QDistinct> distinctByHoraSalida(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'horaSalida', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subject, Subject, QDistinct> distinctByModalidad(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modalidad', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subject, Subject, QDistinct> distinctBySubjectName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subjectName', caseSensitive: caseSensitive);
    });
  }
}

extension SubjectQueryProperty
    on QueryBuilder<Subject, Subject, QQueryProperty> {
  QueryBuilder<Subject, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> aulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aula');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> dayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'day');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> horaEntradaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'horaEntrada');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> horaSalidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'horaSalida');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> modalidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modalidad');
    });
  }

  QueryBuilder<Subject, String?, QQueryOperations> subjectNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subjectName');
    });
  }
}
