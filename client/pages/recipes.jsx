/* eslint-disable no-console */

import React from 'react';

function RecipeItem({ recipe }) {
  const { title, directions } = recipe;

  return (
    <li className="list-group-item">
      <div className="row">
        <div className="col-3">{title}</div>
        <div className="col-9">{directions}</div>
      </div>
    </li>
  );
}

export default class Recipes extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      recipes: null
    };
  }

  componentDidMount() {
    fetch('/api/recipes')
      .then(res => res.json())
      .then(recipes => {
        this.setState({ recipes });
      });
  }

  render() {
    const { recipes } = this.state;

    if (!recipes) {
      return <p className="text-center">Loading Recipes...</p>;
    }

    console.log('Recipes:', recipes);

    return (
      <div className="container">
        <h1 className="text-center">Search For A Recipe</h1>

        <ul className="list-group list-group-flush">
          {
            recipes.length
              ? recipes.map(recipe => <RecipeItem key={recipe.recipeId} recipe={recipe} />)
              : <li className="list-group-item">No Recipes Available</li>
          }
        </ul>
      </div>
    );
  }
}
