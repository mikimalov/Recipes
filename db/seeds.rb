# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {
    full_name: 'Miki Malov',
    first_name: 'Miki',
    last_name: 'Malov',
    email: 'mikimalov29@gmail.com',
    password: 'mikimiki',
    password_confirmation: 'mikimiki',
    created_at: '14.08.2020'
  }
])

Recipe.create([
  {
    user_id: User.last.id,
    title: 'Long island',
    description: 'Fine summer cocktail served in long fine glass!',
    created_at: '14.08.2020'
  }
])

Ingredient.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Gin'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Vodka'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Rum'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Cola'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Lemon juice'
  }
])

Instruction.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Putting alcochol in long glass full with ice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring up lemon juice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Stealing with long spoon.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring up coke.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Decorating with peace of fresh lemon.'
  }
])

Recipe.create([
  {
    user_id: User.last.id,
    title: 'Blue Lagoon',
    description: 'Blue strong cocktail in long fine glass, perfect for parties!',
    created_at: '14.08.2020'
  }
])

Ingredient.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Gin'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Vodka'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Blue curacao'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Sprite'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Lemon juice'
  }
])

Instruction.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Putting Gin and Vodka in long glass full with ice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Putting lemon juice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring up sprite.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring few drops of blue curacao.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Decorating with peace of fresh lemon.'
  }
])

Recipe.create([
  {
    user_id: User.last.id,
    title: 'Bahama mama',
    description: 'Sweet summer cocktail served in small glass!',
    created_at: '14.08.2020'
  }
])

Ingredient.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Rum'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Vodka'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pineapple juice'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Coconut syrup'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Grenadine'
  }
])

Instruction.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Putting Gin, Rum, coconut and pineapple juice in shaker.'
  },
  {
    recipe_id: Recipe.last.id,
    body: ' fill in shaker with ice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Shake it few minutes.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring up in small glass.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring few drops of grenadine.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Decorating with peace of fresh pineapple.'
  }
])

User.create([
  {
    full_name: 'Vesna Malova',
    first_name: 'Vesna',
    last_name: 'Malova',
    email: 'vesnamalova49@gmail.com',
    password: 'vesnavesna',
    password_confirmation: 'vesnavesna',
    created_at: '14.08.2020'
  }
])

Recipe.create([
  {
    user_id: User.last.id,
    title: 'Caipirihna',
    description: 'Refreshing cocktail with lemon juice.',
    created_at: '14.08.2020'
  }
])

Ingredient.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Vodka'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Lemon juice'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Sugar syrup'
  },
])

Instruction.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Putting ice in small glass.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Fill in with vodka, lemon juice and sugar syrup.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Stealing with long spoon few minutes'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Decorating with peace of fresh lemon.'
  }
])

Recipe.create([
  {
    user_id: User.last.id,
    title: 'Sex on the beach',
    description: 'Refreshing summer cocktail served in long fine glass',
    created_at: '14.08.2020'
  }
])

Ingredient.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Vodka'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Tripple sec'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Cranberries juice'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Orange juice'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Grenadine'
  }
])

Instruction.create([
  {
    recipe_id: Recipe.last.id,
    body: 'Putting ice in shaker.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Fill in with vodka, tripple sec, orange and cranberries juice.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Shaking few minutes.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring in long fine glass.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Pouring few drops of grenadine.'
  },
  {
    recipe_id: Recipe.last.id,
    body: 'Decorating with peace of fresh orange.'
  }
])





