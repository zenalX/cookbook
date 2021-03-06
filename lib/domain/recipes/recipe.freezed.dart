// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Recipe {
  UniqueId get id => throw _privateConstructorUsedError;
  RecipeName get name => throw _privateConstructorUsedError;
  ListItem<IngredientItem> get ingredients =>
      throw _privateConstructorUsedError;
  ListItem<StepItem> get steps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RecipeName name,
      ListItem<IngredientItem> ingredients,
      ListItem<StepItem> steps});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RecipeName,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as ListItem<IngredientItem>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as ListItem<StepItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RecipeName name,
      ListItem<IngredientItem> ingredients,
      ListItem<StepItem> steps});
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, (v) => _then(v as _$_Recipe));

  @override
  _$_Recipe get _value => super._value as _$_Recipe;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
  }) {
    return _then(_$_Recipe(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RecipeName,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as ListItem<IngredientItem>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as ListItem<StepItem>,
    ));
  }
}

/// @nodoc

class _$_Recipe extends _Recipe {
  const _$_Recipe(
      {required this.id,
      required this.name,
      required this.ingredients,
      required this.steps})
      : super._();

  @override
  final UniqueId id;
  @override
  final RecipeName name;
  @override
  final ListItem<IngredientItem> ingredients;
  @override
  final ListItem<StepItem> steps;

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, ingredients: $ingredients, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(steps));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);
}

abstract class _Recipe extends Recipe {
  const factory _Recipe(
      {required final UniqueId id,
      required final RecipeName name,
      required final ListItem<IngredientItem> ingredients,
      required final ListItem<StepItem> steps}) = _$_Recipe;
  const _Recipe._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  RecipeName get name => throw _privateConstructorUsedError;
  @override
  ListItem<IngredientItem> get ingredients =>
      throw _privateConstructorUsedError;
  @override
  ListItem<StepItem> get steps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
