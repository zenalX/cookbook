import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';

class AddIngredientField extends HookWidget {
  const AddIngredientField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleShowValidators = useState(false);

    final textEditingController = useTextEditingController();
    textEditingController.text = '';

    return BlocConsumer<RecipeFormBloc, RecipeFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        // add initial ingredients to context.formIngredients
        context.formIngredients = state.recipe.ingredients.value.fold(
          (_) => listOf<IngredientItemPrimitive>(),
          (ingredientItemList) => ingredientItemList
              .map((_) => IngredientItemPrimitive.fromDomain(_)),
        );
      },
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages ||
          previous.isEditing != current.isEditing,
      builder: (context, state) {
        return Visibility(
          visible: state.isEditing,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: context.addIngredientStr,
                    counterText: '',
                    suffixIcon: IconButton(
                      onPressed: () => addIngredient(
                        context,
                        textEditingController.text,
                        toggleShowValidators,
                      ),
                      icon: const Icon(Icons.add),
                    ),
                  ),
                  onFieldSubmitted: (_) => addIngredient(
                    context,
                    textEditingController.text,
                    toggleShowValidators,
                  ),
                  autovalidateMode: toggleShowValidators.value
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  validator: (_) {
                    return IngredientName(textEditingController.text)
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            empty: (_) => context.cannotBeEmptyStr,
                            exceedingLength: (_) => context.exceedingLengthStr,
                            multiline: (_) => context.multilineStr,
                            orElse: () => null,
                          ),
                          (r) => null,
                        );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void addIngredient(
    BuildContext context,
    String ingredientName,
    ValueNotifier toggleShowValidators,
  ) {
    toggleShowValidators.value = true;

    IngredientName(ingredientName).value.fold(
      (l) => null,
      (r) {
        context.formIngredients = context.formIngredients.plusElement(
          IngredientItemPrimitive(
            id: UniqueId(),
            name: ingredientName,
          ),
        );

        context
            .read<RecipeFormBloc>()
            .add(RecipeFormEvent.ingredientsChanged(context.formIngredients));

        toggleShowValidators.value = false;
      },
    );
  }
}
