import 'package:cookbook_app/presentation/recipes/recipes_overview/widget/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/recipe_watcher/recipe_watcher_bloc.dart';
import 'error_recipe_card_widget.dart';
import 'recipe_card_widget.dart';

class RecipeOverviewBody extends StatelessWidget {
  const RecipeOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeWatcherBloc, RecipeWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.recipes.size,
              itemBuilder: (BuildContext context, int index) {
                final recipe = state.recipes[index];
                if (recipe.failureOption.isSome()) {
                  return ErrorRecipeCard(
                    recipe: recipe,
                  );
                } else {
                  return RecipeCard(recipe: recipe);
                }
              },
            );
          },
          loadFailure: (state) {
            return CriticalFilureDisplay(
              failure: state.recipeFailure,
            );
          },
        );
      },
    );
  }
}
