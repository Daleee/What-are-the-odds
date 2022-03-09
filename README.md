# What-are-the-odds
A fun game usually played in person, but took the opportunity to build it as an iOS app as a project

Usually played as a drinking game, or in a scenario where you're wanting someone to do something that they are unlikely to do.

# Example of how the game is played out
John: Hey James, What are the odds that you will scull your drink  
James: 30-1  
John: Hey Chris, Can you count us in?  
Chris: 3...2...1..!  
James and John: 23!  
*Crowd goes wild*  
John: We both said the same number, now you have to scull your beer  

# Further Details
Essentially one person will ask another "what are the odds?" that they will perform xyz task (50-1 being the maximum odds). When the person who is challenged chooses their number, a 3rd party is brought into the equation to perform a count down from 3. at the end of the countdown, both the challenger and the challengee will say (outloud) a number between 0 and the Odds number that the person chose when initially challenged. If they both say the same number out loud, the task has to be performed. if the numbers are separate, you can go ahead with your day.

# Additional Logic
- If the numbers spoken aloud after the countdown can be added to gether and are then == the original odds number, the odds are to be halved and to go again
- The challengee has the ability to reverse the question if he gets away scott free after being challenged.

# Summary
The idea is to build all of the above logic into a mobile app build in swift for iOS, this is just a fun project and will also remove the need for a 3rd person for the count in
