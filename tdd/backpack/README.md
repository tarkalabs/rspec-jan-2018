## Backpack

Write a class that can be initialized with a backpack with multiple sections and it's capacity. It should have an API to add item quantities into the pool, upon which the items are evenly distributed across the sections.

The add method should accept two arguments, item name and it's weight and should return the current pool representation.

Example

```
backpack = Backpack.new {
  section1: 120,
  section2: 200,
  section3: 80
}
=> INITIALIZED

backpack.add_item('laptop', 2.5)
=> ADDED ITEM

backpack.status
=> {
  section1: {
    total_capacity: 120,
    available_capacity: 117.5,
    available_items: {
      item_name: 'laptop',
      item_size: 2.5
    }
  }
  ...
}

```
