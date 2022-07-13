---
Title: On the Impact of the Medium in the Effectiveness of Software Visualizations
---

Abundant visualizations have proven to be effective in supporting tasks in various software concerns. Although multiple media can be used to display some visualizations, most of them use a standard computer screen. We hypothesize that the medium used to present visualizations has a role in their effectiveness. We investigate our hypothesis by conducting a controlled user experiment. In the experiment we focus on the 3D city visualization technique used for software comprehension tasks. We deploy them across an immersive 3D environment (I3D), a physical 3D printed model (P3D), and a standard com- puter screen (SCS). We ask twenty-seven participants (whom we divided in three groups for each medium) to visualize software systems of various sizes, solve a set of comprehension tasks and complete a questionnaire. We measure the effectiveness of visualizations in terms of performance, recall, and user experience. We found that I3D is the medium that has the most positive impact in the effectiveness of visualizations. That is, I3D not only boosts their performance, but also promotes the best recall and user experience. Developers who use SCS exhibit the best performance, but they remember fewer details of visualizations and undergo a moderate user experience. Finally, developers who visualize systems based on P3D exhibit the lowest performance, the least recall and a moderate experience.


##**I3D**: Immersive 3D Environments. 
Compiled applications for Windows of the visualizations of Azureus, Freemind and Axion can be [downloaded from here](%assets_url%/files/49/cpd4niwwd564hqov2e8wxj9h0fe8vu/MediaVis.zip)
##**SCS**: Standard Computer Screens. 
We used CodeCity for visualizations in SCS. More information about running [CodeCity here](http://smalltalkhub.com/#!/~RichardWettel/CodeCity)  
##**P3D**: Physical 3D Printed Models. 
We used a Form 2 3D printer by formlabs based on stereolithography (SLA) technology. The models were exported to the Stereo Lithography (STL) format from the I3D implementation (in Unity). 
Each model lasts between 6 to 12 hours to be printed. We printed models in clear and white color. Afterwards, we paint the models. We used Revell Email Color paints number 7 (black). 12 (yellow), 61 (green), and 91 (aluminum). To achieve the color scale gradient of five green tones, we used a dropper to mix them in the following way:


| | | | | |
|---|---|---|---|---|
|**Scale Tone**|**# Black Drops**|**# Green Drops**|**# YellowDrops**|
|Black|30|0|0|
|Green|10|5|10|
|Bright green|2|5|10|
|Very bright green|0|5|10|
![Painting_Azureus](%assets_url%/files/d5/4b9m2euvxr32zjhmpni0tz2iw9sfpp/Painting_Azureus.png)

We produced models of:

-  Azureus 4.8.1.2 ![(STL file)](%assets_url%/files/30/9lzu7ke82g8msgqartqhdv2xoqupjs/Azureus.stl)
-  Freemind 2.0.9 ![(STL file)](%assets_url%/files/d8/3evx8gz2hnglkbhwyndf5iz0trj7p6/Freemind.stl)
-  Axion 1.0-M2 ![(STL file)](%assets_url%/files/8d/xj0bb1ny8wved415qerm72eeqqbnzl/Axion.stl)

Here are [slides](%assets_url%/download/softwarecomposition/2017-03-28-Merino-MediaVis.pdf) of a short presentation. And here a [post](https://www.visual-computing.org/2017/03/14/visualizations-for-software-comprehension/)  in the Visual Computing blog.

A video with captures of participants and the visualizations used in each medium are [here](https://www.youtube.com/watch?v=xzl8MbI7_rI) 

A [paper](%assets_url%/archive/papers/Meri17b.pdf) published in the proceedings of VISSOFT 2017.

A [replication package](https://zenodo.org/record/823023/files/artifact.zip) of the experiment.

Contact [Leonel Merino](%base_url%/staff/merino)
