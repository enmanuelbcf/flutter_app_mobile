// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'University.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUniversityCollection on Isar {
  IsarCollection<University> get universitys => this.collection();
}

const UniversitySchema = CollectionSchema(
  name: r'University',
  id: -7266455281351816506,
  properties: {
    r'acronyms': PropertySchema(
      id: 0,
      name: r'acronyms',
      type: IsarType.string,
    ),
    r'logotype': PropertySchema(
      id: 1,
      name: r'logotype',
      type: IsarType.string,
    ),
    r'universityName': PropertySchema(
      id: 2,
      name: r'universityName',
      type: IsarType.string,
    )
  },
  estimateSize: _universityEstimateSize,
  serialize: _universitySerialize,
  deserialize: _universityDeserialize,
  deserializeProp: _universityDeserializeProp,
  idName: r'id',
  indexes: {
    r'acronyms': IndexSchema(
      id: 8919859631602283841,
      name: r'acronyms',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'acronyms',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'logotype': IndexSchema(
      id: -2310766991435180999,
      name: r'logotype',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'logotype',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _universityGetId,
  getLinks: _universityGetLinks,
  attach: _universityAttach,
  version: '3.1.0+1',
);

int _universityEstimateSize(
  University object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.acronyms;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.logotype;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.universityName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _universitySerialize(
  University object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.acronyms);
  writer.writeString(offsets[1], object.logotype);
  writer.writeString(offsets[2], object.universityName);
}

University _universityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = University();
  object.acronyms = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.logotype = reader.readStringOrNull(offsets[1]);
  object.universityName = reader.readStringOrNull(offsets[2]);
  return object;
}

P _universityDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _universityGetId(University object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _universityGetLinks(University object) {
  return [];
}

void _universityAttach(IsarCollection<dynamic> col, Id id, University object) {
  object.id = id;
}

extension UniversityByIndex on IsarCollection<University> {
  Future<University?> getByAcronyms(String? acronyms) {
    return getByIndex(r'acronyms', [acronyms]);
  }

  University? getByAcronymsSync(String? acronyms) {
    return getByIndexSync(r'acronyms', [acronyms]);
  }

  Future<bool> deleteByAcronyms(String? acronyms) {
    return deleteByIndex(r'acronyms', [acronyms]);
  }

  bool deleteByAcronymsSync(String? acronyms) {
    return deleteByIndexSync(r'acronyms', [acronyms]);
  }

  Future<List<University?>> getAllByAcronyms(List<String?> acronymsValues) {
    final values = acronymsValues.map((e) => [e]).toList();
    return getAllByIndex(r'acronyms', values);
  }

  List<University?> getAllByAcronymsSync(List<String?> acronymsValues) {
    final values = acronymsValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'acronyms', values);
  }

  Future<int> deleteAllByAcronyms(List<String?> acronymsValues) {
    final values = acronymsValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'acronyms', values);
  }

  int deleteAllByAcronymsSync(List<String?> acronymsValues) {
    final values = acronymsValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'acronyms', values);
  }

  Future<Id> putByAcronyms(University object) {
    return putByIndex(r'acronyms', object);
  }

  Id putByAcronymsSync(University object, {bool saveLinks = true}) {
    return putByIndexSync(r'acronyms', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAcronyms(List<University> objects) {
    return putAllByIndex(r'acronyms', objects);
  }

  List<Id> putAllByAcronymsSync(List<University> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'acronyms', objects, saveLinks: saveLinks);
  }
}

extension UniversityQueryWhereSort
    on QueryBuilder<University, University, QWhere> {
  QueryBuilder<University, University, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UniversityQueryWhere
    on QueryBuilder<University, University, QWhereClause> {
  QueryBuilder<University, University, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<University, University, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> idBetween(
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

  QueryBuilder<University, University, QAfterWhereClause> acronymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acronyms',
        value: [null],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> acronymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'acronyms',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> acronymsEqualTo(
      String? acronyms) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'acronyms',
        value: [acronyms],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> acronymsNotEqualTo(
      String? acronyms) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acronyms',
              lower: [],
              upper: [acronyms],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acronyms',
              lower: [acronyms],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acronyms',
              lower: [acronyms],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'acronyms',
              lower: [],
              upper: [acronyms],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> logotypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'logotype',
        value: [null],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> logotypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'logotype',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> logotypeEqualTo(
      String? logotype) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'logotype',
        value: [logotype],
      ));
    });
  }

  QueryBuilder<University, University, QAfterWhereClause> logotypeNotEqualTo(
      String? logotype) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'logotype',
              lower: [],
              upper: [logotype],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'logotype',
              lower: [logotype],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'logotype',
              lower: [logotype],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'logotype',
              lower: [],
              upper: [logotype],
              includeUpper: false,
            ));
      }
    });
  }
}

extension UniversityQueryFilter
    on QueryBuilder<University, University, QFilterCondition> {
  QueryBuilder<University, University, QAfterFilterCondition> acronymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acronyms',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      acronymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acronyms',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      acronymsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acronyms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      acronymsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acronyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> acronymsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acronyms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      acronymsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acronyms',
        value: '',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      acronymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acronyms',
        value: '',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<University, University, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<University, University, QAfterFilterCondition> idBetween(
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

  QueryBuilder<University, University, QAfterFilterCondition> logotypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logotype',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      logotypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logotype',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      logotypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logotype',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      logotypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logotype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition> logotypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logotype',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      logotypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logotype',
        value: '',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      logotypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logotype',
        value: '',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'universityName',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'universityName',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'universityName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'universityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'universityName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'universityName',
        value: '',
      ));
    });
  }

  QueryBuilder<University, University, QAfterFilterCondition>
      universityNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'universityName',
        value: '',
      ));
    });
  }
}

extension UniversityQueryObject
    on QueryBuilder<University, University, QFilterCondition> {}

extension UniversityQueryLinks
    on QueryBuilder<University, University, QFilterCondition> {}

extension UniversityQuerySortBy
    on QueryBuilder<University, University, QSortBy> {
  QueryBuilder<University, University, QAfterSortBy> sortByAcronyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acronyms', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> sortByAcronymsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acronyms', Sort.desc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> sortByLogotype() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logotype', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> sortByLogotypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logotype', Sort.desc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> sortByUniversityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'universityName', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy>
      sortByUniversityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'universityName', Sort.desc);
    });
  }
}

extension UniversityQuerySortThenBy
    on QueryBuilder<University, University, QSortThenBy> {
  QueryBuilder<University, University, QAfterSortBy> thenByAcronyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acronyms', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenByAcronymsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acronyms', Sort.desc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenByLogotype() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logotype', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenByLogotypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logotype', Sort.desc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy> thenByUniversityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'universityName', Sort.asc);
    });
  }

  QueryBuilder<University, University, QAfterSortBy>
      thenByUniversityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'universityName', Sort.desc);
    });
  }
}

extension UniversityQueryWhereDistinct
    on QueryBuilder<University, University, QDistinct> {
  QueryBuilder<University, University, QDistinct> distinctByAcronyms(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acronyms', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<University, University, QDistinct> distinctByLogotype(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logotype', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<University, University, QDistinct> distinctByUniversityName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'universityName',
          caseSensitive: caseSensitive);
    });
  }
}

extension UniversityQueryProperty
    on QueryBuilder<University, University, QQueryProperty> {
  QueryBuilder<University, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<University, String?, QQueryOperations> acronymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acronyms');
    });
  }

  QueryBuilder<University, String?, QQueryOperations> logotypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logotype');
    });
  }

  QueryBuilder<University, String?, QQueryOperations> universityNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'universityName');
    });
  }
}
