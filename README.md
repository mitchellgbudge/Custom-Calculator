# Custom-Calculator

I was inspired by the simple portrait version of Apple's calculator to create and design my own. While I recently revamped this project, it was one of the first Xcode projects I ever attempted. Rebuilding a digital calculator from scratch gave me a chance to think analytically about the code that would need to be executed in order to perform simple operations like addition and division. This gave me a real appreciation for the many calculators I relied on to get me through grade school math tests. 

The most challenging part of this project was wrangling Auto Layout constraints to ensure that the view appeared proportionally correct and in tandem design-wise with traditional calculators. Interface Builder is an extremely effective tool. While I'm sure I could've created the elements programmatically with the same congruency, it was much more efficient to utilize storyboards to lay out the views. 

I got some excellent practice debugging and testing to ensure that all of my code would execute properly. With the help of some unit tests, I was able to pick out several places where improvement was needed, such as displaying the number as a whole integer when no decimal places are necessary, or limiting the amount of digits when a solution had more decimal places than could fit inside the label. 

Creating this calculator from scratch helped me further my Auto Layout skills along with reaffirming the importance of writing extensive UI and unit tests to ensure that all use cases are covered in production. 
