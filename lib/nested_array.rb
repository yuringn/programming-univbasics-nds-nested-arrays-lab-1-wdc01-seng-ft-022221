# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

def assembled_matrix
  matrix = [
    ["Grapefruit", "Pineapple", "Oranges", "Watermelon", "Eggplant" ],
    ["Strawberries","Potatoes","Grapes", "Avocadoes","Asparagus"],
    ]



  # Build an array that contains both of the above arrays
  # This matrix will represent a produce storage room
  # Organic standards require that organic products be stored ABOVE conventional, not the other way around
  # Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
end

def sorted_matrix
  matrix = [
  ["Grapefruit", "Pineapple", "Oranges", "Watermelon", "Eggplant" ],
  ["Strawberries","Potatoes","Grapes", "Avocadoes","Asparagus"],
  ]
  sorted_matrix=[]
  sorted_matrix << matrix[0].sort!
  sorted_matrix << matrix[1].sort!
  # Using Array literal syntax only, build another nested array that
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
end
p sorted_matrix

def matrix_lookup(matrix, row, column)
  p matrix[row][column]
  # Given any matrix (array of arrays), a row index and a column index,
  # Return the matrix's content at that row and and column
end
matrix_lookup([
["Grapefruit", "Pineapple", "Oranges", "Watermelon", "Eggplant" ],
["Strawberries","Potatoes","Grapes", "Avocadoes","Asparagus"],
], 1, 1)

def matrix_update(matrix, row, column, new_value)
  matrix[row][column] = new_value
  # Given any matrix (array of arrays), a row index and a column index,
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
  p matrix
end
matrix_update([
["Grapefruit", "Pineapple", "Oranges", "Watermelon", "Eggplant" ],
["Strawberries","Potatoes","Grapes", "Avocadoes","Asparagus"],
], 0, 2, "Lemons")
