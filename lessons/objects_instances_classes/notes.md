# Objects, Instances, and Classes
## The Rules:
- File names: file names should be lowercased, if the name of the file is two or more words it should be separated by an underscrore.
- Example: dog.rb, cell_phone.rb, inventory_management_system.rb

- Classes should start with the 'class' keyword, and end with the 'end keyword.

- Class names should use UpperCamelCase
- Example: Dog, CellPhone, InventoryManagementSystem

- When creating instances of a class from within a different file you must first "require in" (import) that class into the file.

- In your runner file, include a pry session in with:
"require 'pry'; binding.pry"

- In a Class, state is stored in instance variables, these are variables that begin with an "@" sign.

- Usually these instances variables live in the "initialize" method.

- Instances variables can only be read from within the class.

- In order for instance variables to be read from outside of the class, you need to create methods to return those values.

- In classes behavior is represented by methods.