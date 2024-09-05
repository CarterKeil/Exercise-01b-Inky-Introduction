/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 * Add four more knots (and feel free to change any of the example text, this is YOUR story)
 * Add at least one more conditional
*/

-> Cave_Found

== Cave_Found ==

You are at the enterance to a cave.
* [Enter the Cave.] ->Cave

==Cave==
{not Torch:You hear behind you the cave}
{Torch:You can see the cave branches in to sections at the end of your torch light. |There in front of you sits a torch on the floor.} 

* [Pick up Torch] -> Torch

* {Torch} [Go Left Down the Cave] -> Left_Tunnel

* {Torch} [Go Right Up the Cave] -> Right_Tunnel

+ {Shovel}{Pickaxe} [Start Digging] -> Escape

==Torch==
 You now have the Torch. 
 + [Go Back] -> Cave

== Left_Tunnel ==
It is too dark to see.
* [Use Torch] -> Left
+ {Shovel} [Start Digging] -> Down
+ [Go Back] -> Cave
-> DONE

== Right_Tunnel ==
It is too dark to see.
* [Use Torch] -> Right
 + {Pickaxe} [Start Digging] -> Down
+ [Go Back] -> Cave
-> DONE

==Left==
 You See a shovel on the ground.
 
 * [Pick up the Shovel] -> Shovel
 
 ==Shovel==
You now have a shovel
 
 + [Go Back] -> Cave

 ==Down==
 You have dug yourself into a deep holw and cant escape
 -> END
 
 ==Right==
 You See a shovel on the ground.
 
 * [Pick up the Pickaxe] -> Pickaxe

 ==Pickaxe==
You now have a shovel
 
 + [Go Back] -> Cave
 
 ==Escape==
 You have made it out of the Cave
 -> END