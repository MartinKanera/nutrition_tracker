// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_record_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFoodRecordEntityCollection on Isar {
  IsarCollection<FoodRecordEntity> get foodRecords => this.collection();
}

const FoodRecordEntitySchema = CollectionSchema(
  name: r'FoodRecordEntity',
  id: 3570831535597226385,
  properties: {
    r'caloriesPer100g': PropertySchema(
      id: 0,
      name: r'caloriesPer100g',
      type: IsarType.double,
    ),
    r'carbsPer100g': PropertySchema(
      id: 1,
      name: r'carbsPer100g',
      type: IsarType.double,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'fatPer100g': PropertySchema(
      id: 3,
      name: r'fatPer100g',
      type: IsarType.double,
    ),
    r'grams': PropertySchema(
      id: 4,
      name: r'grams',
      type: IsarType.double,
    ),
    r'mealType': PropertySchema(
      id: 5,
      name: r'mealType',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'proteinPer100g': PropertySchema(
      id: 7,
      name: r'proteinPer100g',
      type: IsarType.double,
    )
  },
  estimateSize: _foodRecordEntityEstimateSize,
  serialize: _foodRecordEntitySerialize,
  deserialize: _foodRecordEntityDeserialize,
  deserializeProp: _foodRecordEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _foodRecordEntityGetId,
  getLinks: _foodRecordEntityGetLinks,
  attach: _foodRecordEntityAttach,
  version: '3.1.0+1',
);

int _foodRecordEntityEstimateSize(
  FoodRecordEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _foodRecordEntitySerialize(
  FoodRecordEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.caloriesPer100g);
  writer.writeDouble(offsets[1], object.carbsPer100g);
  writer.writeDateTime(offsets[2], object.date);
  writer.writeDouble(offsets[3], object.fatPer100g);
  writer.writeDouble(offsets[4], object.grams);
  writer.writeLong(offsets[5], object.mealType);
  writer.writeString(offsets[6], object.name);
  writer.writeDouble(offsets[7], object.proteinPer100g);
}

FoodRecordEntity _foodRecordEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FoodRecordEntity(
    caloriesPer100g: reader.readDouble(offsets[0]),
    carbsPer100g: reader.readDouble(offsets[1]),
    date: reader.readDateTime(offsets[2]),
    fatPer100g: reader.readDouble(offsets[3]),
    grams: reader.readDouble(offsets[4]),
    id: id,
    mealType: reader.readLong(offsets[5]),
    name: reader.readString(offsets[6]),
    proteinPer100g: reader.readDouble(offsets[7]),
  );
  return object;
}

P _foodRecordEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _foodRecordEntityGetId(FoodRecordEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _foodRecordEntityGetLinks(FoodRecordEntity object) {
  return [];
}

void _foodRecordEntityAttach(
    IsarCollection<dynamic> col, Id id, FoodRecordEntity object) {}

extension FoodRecordEntityQueryWhereSort
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QWhere> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FoodRecordEntityQueryWhere
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QWhereClause> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterWhereClause> idBetween(
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

extension FoodRecordEntityQueryFilter
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QFilterCondition> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      caloriesPer100gEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caloriesPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      caloriesPer100gGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'caloriesPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      caloriesPer100gLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'caloriesPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      caloriesPer100gBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'caloriesPer100g',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      carbsPer100gEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carbsPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      carbsPer100gGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carbsPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      carbsPer100gLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carbsPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      carbsPer100gBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carbsPer100g',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      fatPer100gEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      fatPer100gGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fatPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      fatPer100gLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fatPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      fatPer100gBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fatPer100g',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      gramsEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      gramsGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      gramsLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grams',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      gramsBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grams',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      mealTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mealType',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      mealTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mealType',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      mealTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mealType',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      mealTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mealType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      proteinPer100gEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proteinPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      proteinPer100gGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proteinPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      proteinPer100gLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proteinPer100g',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterFilterCondition>
      proteinPer100gBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proteinPer100g',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension FoodRecordEntityQueryObject
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QFilterCondition> {}

extension FoodRecordEntityQueryLinks
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QFilterCondition> {}

extension FoodRecordEntityQuerySortBy
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QSortBy> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByCaloriesPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caloriesPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByCaloriesPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caloriesPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByCarbsPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbsPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByCarbsPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbsPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByFatPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByFatPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> sortByGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grams', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByGramsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grams', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByMealType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealType', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByMealTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealType', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByProteinPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      sortByProteinPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinPer100g', Sort.desc);
    });
  }
}

extension FoodRecordEntityQuerySortThenBy
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QSortThenBy> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByCaloriesPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caloriesPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByCaloriesPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'caloriesPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByCarbsPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbsPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByCarbsPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbsPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByFatPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByFatPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatPer100g', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> thenByGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grams', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByGramsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grams', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByMealType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealType', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByMealTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealType', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByProteinPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinPer100g', Sort.asc);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QAfterSortBy>
      thenByProteinPer100gDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinPer100g', Sort.desc);
    });
  }
}

extension FoodRecordEntityQueryWhereDistinct
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct> {
  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByCaloriesPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'caloriesPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByCarbsPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carbsPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByFatPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fatPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByGrams() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grams');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByMealType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mealType');
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FoodRecordEntity, FoodRecordEntity, QDistinct>
      distinctByProteinPer100g() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proteinPer100g');
    });
  }
}

extension FoodRecordEntityQueryProperty
    on QueryBuilder<FoodRecordEntity, FoodRecordEntity, QQueryProperty> {
  QueryBuilder<FoodRecordEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FoodRecordEntity, double, QQueryOperations>
      caloriesPer100gProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'caloriesPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, double, QQueryOperations>
      carbsPer100gProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carbsPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<FoodRecordEntity, double, QQueryOperations>
      fatPer100gProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fatPer100g');
    });
  }

  QueryBuilder<FoodRecordEntity, double, QQueryOperations> gramsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grams');
    });
  }

  QueryBuilder<FoodRecordEntity, int, QQueryOperations> mealTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mealType');
    });
  }

  QueryBuilder<FoodRecordEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<FoodRecordEntity, double, QQueryOperations>
      proteinPer100gProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proteinPer100g');
    });
  }
}
