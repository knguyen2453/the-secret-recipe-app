insert into users
  ("email", "password")
  values
    ('usernumberone@example.com', '1111'),
    ('usernumbertwo@example.com', '2222'),
    ('usernumberthree@example.com', '3333');

insert into recipes
  ("title", "directions", "userId")
  values
    ('Pizza', 'Roll out dough, add sauce, add cheese, add toppings, bake for 10 minutes at 400 degrees', 1),
    ('Hot Dog', 'Toast buns, add sausage, add condiments', 2),
    ('Hamburger', 'Toast buns, add patty, add condiments', 1),
    ('Quesadilla', 'Add cheese to tortilla, fold in half, oil pan and heat', 3);

insert into comments
  ("userId", "recipeId", "comment")
  values
    (3, 1, 'The pizza was perfect!'),
    (2, 1, 'It was a little burnt for my taste'),
    (1, 2, 'Hot dogs are my favorite'),
    (1, 3, 'My family loved the burgers!!!');
