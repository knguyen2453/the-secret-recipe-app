import React from 'react';
import { Route, Link } from 'react-router-dom';
import Home from './pages/home';
import Create from './pages/create';
import Recipes from './pages/recipes';
import Login from './pages/login';

export default class App extends React.Component {
  render() {
    return (
      <div>
        <div className="text-center my-3">
          <Link className="px-4" to="/">Home</Link>
          <Link className="px-4" to="/create">Create</Link>
          <Link className="px-4" to="/recipes">Search</Link>
          <Link className="px-4" to="/login">Log Out</Link>
        </div>

        <Route exact path="/">
          <Home />
        </Route>
        <Route path="/create">
          <Create />
        </Route>
        <Route path="/recipes">
          <Recipes />
        </Route>
        <Route path="/login">
          <Login />
        </Route>
      </div>
    );
  }
}
