# Video-Game-Sales-Analysis

The video game sector is immensely large. In fact, it is larger than the movie and music industries combined, and it is only growing. Though it doesn't get the same attention that the movie and music industry does, there are over two billion gamers across the world. That is 26% of the world's population.
It is one of the most important industries in today's world as it contributes to the culture, social networking and entertainment

The dataset consist of list of video games with sales in millions, across the world from 1980-2015.

Console games dataset has the following columns:
* RANK- A unique identifier for each game in the dataset, used for filtering or sorting purposes
* Name- The name of the game
* Platform- The platform or console on which the game was released
* Genre- The genre or category of the game
* Publisher- The company or organization that published or distributed the game
* NA_Sales- The sales in North America, in millions
* EU_Sales- The sales in Europe, in millions
* JP_Sales- The sales in japan, in millions
* Other_Sales- The sales in other regions,in millions

Console dates dataset has the following columns:
* Platform- The platform or console that the data pertains to
* First Retail Availability- The date on which the platform was first made available for purchase or use
* Discontinued- Whether the platform has been discontinued or not
* Units Sold in Millions- The total number of units of the platform sold in millions
* Comment- Additional comments or notes on the platform, such as its features, history, or impact on the industry 


PostgreSQL database was used for analysis video game sales with the following questions:
* Calculate what percentage of global sales were made in North America
* Extract the view of the console game titles ordered by platform name in ascending order and year of release in descending order
* For each game title extract the first four letters of the publisher's name 
* Display the console platforrm which were released either just before black friday or just before christmas (in any year)
 
For the visualization of sales of video game from 1980-2015, you can track the total or single game or platform sales and many other possibilities.
![VG 1](https://user-images.githubusercontent.com/100838547/221829619-0b1eec77-d77f-4cbc-968f-71b2a4f289b9.png)


## Outcomes
* The total sales of video games from 1980-2015 is $8.74bn and North America is the region with the highest sales of 49.32%.
* The top selling publishers (the company that published or distribute the game) are Nintendo, Electronic Arts and Activision.
* The top selling platforms (the console on which the game was released) are PS2, X360 and PS3.
* The top selling genre (category of the game) are Action, Sports and Shooter games respectively.
* The Year 2008 has the best selling field  of video game with over 678m, followed by Year 2009 with about $667m.
* The 2 most popular consoles (PS2 and X360) made their highest sales in year 2004 and 2010 with over $209bn and $170bn respectively.
* Majority of the games were purchased in North America with PS2 taking the lead.
