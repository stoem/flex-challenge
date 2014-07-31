## Flex Programming Task

In order to be considered for the Flex position, you must complete the following steps. 

*Note: This task should take no longer than 1-2 hours at the most. Please read the entire project spec before you start work.*


### Prerequisites

- Please note that this will require some ActionScript3, Flex and git knowledge. 
- You will need to have a Flex IDE (Flash Builder ideally) installed to complete this task. 

## Task

- The goal is to build a simple LaTeX editor which returns a gif image to Flex based on an equation the user enters into a text field similar tot he one you can see at http://www.codecogs.com/eqnedit.php (. The user can also click buttons to create the equation. 

1. Fork this repository (if you don't know how to do that, Google is your friend)
2. Create a Flex 4 project with a *src* folder to contain your code. 
3. In the *src* directory, please create a Flex app that accomplishes the following:
	- Provide a text input field to the user to enter equation text
	- Provide 3 buttons with LaTeX symbols of your choice which, when clicked, add the clicked symbol into the text field (see http://www.codecogs.com/eqnedit.php for an example). If you have time feel free to add additional buttons
	- Create an HTTPService which requests a new image from 'http://latex.codecogs.com/gif.latex?\LARGE%20\bg_white%20[equation]' upon every change of the text field. A valid example for the equation 1+1 would be 'http://latex.codecogs.com/gif.latex?\LARGE%20\bg_white%201+1'
	- Display the returned image underneath the text field

## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you

