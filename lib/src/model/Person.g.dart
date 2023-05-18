// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Person.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PersonCWProxy {
  Person avator(Avator avator);

  Person genreName(String genreName);

  Person name(String name);

  Person like(bool like);

  Person firstDescription(String firstDescription);

  Person secondDescription(String secondDescription);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Person(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Person(...).copyWith(id: 12, name: "My name")
  /// ````
  Person call({
    Avator? avator,
    String? genreName,
    String? name,
    bool? like,
    String? firstDescription,
    String? secondDescription,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPerson.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPerson.copyWith.fieldName(...)`
class _$PersonCWProxyImpl implements _$PersonCWProxy {
  const _$PersonCWProxyImpl(this._value);

  final Person _value;

  @override
  Person avator(Avator avator) => this(avator: avator);

  @override
  Person genreName(String genreName) => this(genreName: genreName);

  @override
  Person name(String name) => this(name: name);

  @override
  Person like(bool like) => this(like: like);

  @override
  Person firstDescription(String firstDescription) =>
      this(firstDescription: firstDescription);

  @override
  Person secondDescription(String secondDescription) =>
      this(secondDescription: secondDescription);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Person(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Person(...).copyWith(id: 12, name: "My name")
  /// ````
  Person call({
    Object? avator = const $CopyWithPlaceholder(),
    Object? genreName = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? like = const $CopyWithPlaceholder(),
    Object? firstDescription = const $CopyWithPlaceholder(),
    Object? secondDescription = const $CopyWithPlaceholder(),
  }) {
    return Person(
      avator: avator == const $CopyWithPlaceholder() || avator == null
          ? _value.avator
          // ignore: cast_nullable_to_non_nullable
          : avator as Avator,
      genreName: genreName == const $CopyWithPlaceholder() || genreName == null
          ? _value.genreName
          // ignore: cast_nullable_to_non_nullable
          : genreName as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      like: like == const $CopyWithPlaceholder() || like == null
          ? _value.like
          // ignore: cast_nullable_to_non_nullable
          : like as bool,
      firstDescription: firstDescription == const $CopyWithPlaceholder() ||
              firstDescription == null
          ? _value.firstDescription
          // ignore: cast_nullable_to_non_nullable
          : firstDescription as String,
      secondDescription: secondDescription == const $CopyWithPlaceholder() ||
              secondDescription == null
          ? _value.secondDescription
          // ignore: cast_nullable_to_non_nullable
          : secondDescription as String,
    );
  }
}

extension $PersonCopyWith on Person {
  /// Returns a callable class that can be used as follows: `instanceOfPerson.copyWith(...)` or like so:`instanceOfPerson.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PersonCWProxy get copyWith => _$PersonCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPersonCollection on Isar {
  IsarCollection<Person> get persons => this.collection();
}

const PersonSchema = CollectionSchema(
  name: r'Person',
  id: 7854610480646705599,
  properties: {
    r'avator': PropertySchema(
      id: 0,
      name: r'avator',
      type: IsarType.object,
      target: r'Avator',
    ),
    r'firstDescription': PropertySchema(
      id: 1,
      name: r'firstDescription',
      type: IsarType.string,
    ),
    r'genreName': PropertySchema(
      id: 2,
      name: r'genreName',
      type: IsarType.string,
    ),
    r'like': PropertySchema(
      id: 3,
      name: r'like',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'secondDescription': PropertySchema(
      id: 5,
      name: r'secondDescription',
      type: IsarType.string,
    )
  },
  estimateSize: _personEstimateSize,
  serialize: _personSerialize,
  deserialize: _personDeserialize,
  deserializeProp: _personDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Avator': AvatorSchema},
  getId: _personGetId,
  getLinks: _personGetLinks,
  attach: _personAttach,
  version: '3.1.0+1',
);

int _personEstimateSize(
  Person object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      AvatorSchema.estimateSize(object.avator, allOffsets[Avator]!, allOffsets);
  bytesCount += 3 + object.firstDescription.length * 3;
  bytesCount += 3 + object.genreName.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.secondDescription.length * 3;
  return bytesCount;
}

void _personSerialize(
  Person object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Avator>(
    offsets[0],
    allOffsets,
    AvatorSchema.serialize,
    object.avator,
  );
  writer.writeString(offsets[1], object.firstDescription);
  writer.writeString(offsets[2], object.genreName);
  writer.writeBool(offsets[3], object.like);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.secondDescription);
}

Person _personDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Person(
    avator: reader.readObjectOrNull<Avator>(
          offsets[0],
          AvatorSchema.deserialize,
          allOffsets,
        ) ??
        Avator(),
    firstDescription: reader.readString(offsets[1]),
    genreName: reader.readString(offsets[2]),
    like: reader.readBool(offsets[3]),
    name: reader.readString(offsets[4]),
    secondDescription: reader.readString(offsets[5]),
  );
  return object;
}

P _personDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Avator>(
            offset,
            AvatorSchema.deserialize,
            allOffsets,
          ) ??
          Avator()) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _personGetId(Person object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _personGetLinks(Person object) {
  return [];
}

void _personAttach(IsarCollection<dynamic> col, Id id, Person object) {}

extension PersonQueryWhereSort on QueryBuilder<Person, Person, QWhere> {
  QueryBuilder<Person, Person, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PersonQueryWhere on QueryBuilder<Person, Person, QWhereClause> {
  QueryBuilder<Person, Person, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Person, Person, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idBetween(
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

extension PersonQueryFilter on QueryBuilder<Person, Person, QFilterCondition> {
  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      firstDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      firstDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstDescriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      firstDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      firstDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genreName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genreName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genreName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> genreNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genreName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<Person, Person, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<Person, Person, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<Person, Person, QAfterFilterCondition> likeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'like',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      secondDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      secondDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> secondDescriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      secondDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      secondDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondDescription',
        value: '',
      ));
    });
  }
}

extension PersonQueryObject on QueryBuilder<Person, Person, QFilterCondition> {
  QueryBuilder<Person, Person, QAfterFilterCondition> avator(
      FilterQuery<Avator> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'avator');
    });
  }
}

extension PersonQueryLinks on QueryBuilder<Person, Person, QFilterCondition> {}

extension PersonQuerySortBy on QueryBuilder<Person, Person, QSortBy> {
  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstDescription', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstDescription', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGenreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGenreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'like', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'like', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortBySecondDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondDescription', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortBySecondDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondDescription', Sort.desc);
    });
  }
}

extension PersonQuerySortThenBy on QueryBuilder<Person, Person, QSortThenBy> {
  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstDescription', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstDescription', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGenreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGenreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genreName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'like', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'like', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenBySecondDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondDescription', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenBySecondDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondDescription', Sort.desc);
    });
  }
}

extension PersonQueryWhereDistinct on QueryBuilder<Person, Person, QDistinct> {
  QueryBuilder<Person, Person, QDistinct> distinctByFirstDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByGenreName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genreName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'like');
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctBySecondDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondDescription',
          caseSensitive: caseSensitive);
    });
  }
}

extension PersonQueryProperty on QueryBuilder<Person, Person, QQueryProperty> {
  QueryBuilder<Person, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Person, Avator, QQueryOperations> avatorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avator');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> firstDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstDescription');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> genreNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genreName');
    });
  }

  QueryBuilder<Person, bool, QQueryOperations> likeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'like');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> secondDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondDescription');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AvatorSchema = Schema(
  name: r'Avator',
  id: 9141601547872210840,
  properties: {
    r'accessory': PropertySchema(
      id: 0,
      name: r'accessory',
      type: IsarType.byte,
      enumMap: _AvatoraccessoryEnumValueMap,
    ),
    r'eye': PropertySchema(
      id: 1,
      name: r'eye',
      type: IsarType.byte,
      enumMap: _AvatoreyeEnumValueMap,
    ),
    r'head': PropertySchema(
      id: 2,
      name: r'head',
      type: IsarType.byte,
      enumMap: _AvatorheadEnumValueMap,
    ),
    r'option': PropertySchema(
      id: 3,
      name: r'option',
      type: IsarType.byte,
      enumMap: _AvatoroptionEnumValueMap,
    )
  },
  estimateSize: _avatorEstimateSize,
  serialize: _avatorSerialize,
  deserialize: _avatorDeserialize,
  deserializeProp: _avatorDeserializeProp,
);

int _avatorEstimateSize(
  Avator object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _avatorSerialize(
  Avator object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.accessory.index);
  writer.writeByte(offsets[1], object.eye.index);
  writer.writeByte(offsets[2], object.head.index);
  writer.writeByte(offsets[3], object.option.index);
}

Avator _avatorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Avator(
    accessory:
        _AvatoraccessoryValueEnumMap[reader.readByteOrNull(offsets[0])] ??
            Accessory.none,
    eye:
        _AvatoreyeValueEnumMap[reader.readByteOrNull(offsets[1])] ?? Eye.normal,
    head: _AvatorheadValueEnumMap[reader.readByteOrNull(offsets[2])] ??
        Head.normal,
    option: _AvatoroptionValueEnumMap[reader.readByteOrNull(offsets[3])] ??
        Option.none,
  );
  return object;
}

P _avatorDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_AvatoraccessoryValueEnumMap[reader.readByteOrNull(offset)] ??
          Accessory.none) as P;
    case 1:
      return (_AvatoreyeValueEnumMap[reader.readByteOrNull(offset)] ??
          Eye.normal) as P;
    case 2:
      return (_AvatorheadValueEnumMap[reader.readByteOrNull(offset)] ??
          Head.normal) as P;
    case 3:
      return (_AvatoroptionValueEnumMap[reader.readByteOrNull(offset)] ??
          Option.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AvatoraccessoryEnumValueMap = {
  'none': 0,
  'hat': 1,
  'glasses': 2,
};
const _AvatoraccessoryValueEnumMap = {
  0: Accessory.none,
  1: Accessory.hat,
  2: Accessory.glasses,
};
const _AvatoreyeEnumValueMap = {
  'normal': 0,
  'up': 1,
  'down': 2,
};
const _AvatoreyeValueEnumMap = {
  0: Eye.normal,
  1: Eye.up,
  2: Eye.down,
};
const _AvatorheadEnumValueMap = {
  'normal': 0,
  'pony': 1,
  'cut': 2,
};
const _AvatorheadValueEnumMap = {
  0: Head.normal,
  1: Head.pony,
  2: Head.cut,
};
const _AvatoroptionEnumValueMap = {
  'none': 0,
  'smile': 1,
  'cry': 2,
};
const _AvatoroptionValueEnumMap = {
  0: Option.none,
  1: Option.smile,
  2: Option.cry,
};

extension AvatorQueryFilter on QueryBuilder<Avator, Avator, QFilterCondition> {
  QueryBuilder<Avator, Avator, QAfterFilterCondition> accessoryEqualTo(
      Accessory value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accessory',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> accessoryGreaterThan(
    Accessory value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accessory',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> accessoryLessThan(
    Accessory value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accessory',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> accessoryBetween(
    Accessory lower,
    Accessory upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accessory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> eyeEqualTo(Eye value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eye',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> eyeGreaterThan(
    Eye value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eye',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> eyeLessThan(
    Eye value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eye',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> eyeBetween(
    Eye lower,
    Eye upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eye',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> headEqualTo(Head value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'head',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> headGreaterThan(
    Head value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'head',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> headLessThan(
    Head value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'head',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> headBetween(
    Head lower,
    Head upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'head',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> optionEqualTo(
      Option value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> optionGreaterThan(
    Option value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> optionLessThan(
    Option value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'option',
        value: value,
      ));
    });
  }

  QueryBuilder<Avator, Avator, QAfterFilterCondition> optionBetween(
    Option lower,
    Option upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'option',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AvatorQueryObject on QueryBuilder<Avator, Avator, QFilterCondition> {}
