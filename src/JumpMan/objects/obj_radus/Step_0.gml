// Set the starting X position of the object
var startX = 229;

// Set the distance the object should move to either side
var distance = 450;

// Set the movement speed of the object
var movementSpeed = 2;

// Set the movement direction of the object (1 for right, -1 for left)
var moveDirection = 1;

// Move the object back and forth within the set distance
x += moveDirection * movementSpeed;

// Reverse the direction if the object reaches the edge of its movement range
if (abs(x - startX) >= distance)
{
    moveDirection += -2;
    x = startX + (moveDirection * (abs(x - startX) - distance));
}

