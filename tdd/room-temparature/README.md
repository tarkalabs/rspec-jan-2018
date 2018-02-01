## Room Temperature

Write a script to manage the room temperature such that it's comfortable to the people in the room. Write a class that can be initialized with hash of users and their temperature preferences and hash of Air conditioner in the room with their current temperature.

It should have an API to change the temperature of Air conditioner, upon which the method should return the current room temperature and people who are comfortable and who are not. For simplicity, let's calculate the room temperature to be the average of current temperature of ALL ACs.

Example:

```
room = Room.new({
  john: [21, 24],
  mary: [23, 23]
}, {
  ac1: 19,
  ac2: 24
})
=> INITIALIZED

room.change_temperature('ac1', 21)
=> CHANGED TEMPERATURE
=> {comfortable: ['john'], not_comfortable: ['mary']}
```
