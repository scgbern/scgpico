---
Title: Dendrogram Seriation
---
#Dendrogram Seriation
#Context &ndash; Information Visualization

In information visualization, one of the most basic and reoccurring tasks when designing a visualization, is how to order graphical elements in a meaningful linear sequence. This task is called <i>seriation</i>. The term seriation itself comes from archeology, where it denotes the problem of assigning artifacts to timelines, eg fragments of vases found on an archeological site. In the context of information visualization, already Bertin emphasized the importance of reordering qualitative variables in graphical displays to make relations more apparent. 

Patterns in the data can not become visible, unless they are taken into account when arranging the elements. To achieve a meaningful sequence of variables, the graphical proximity has to reflect the relation among the data elements: related elements near each other, and vice versa, unrelated elements apart of each other. Alas, all too often, the proximity of elements is not chosen with care or even ignored at all, which means that a random or even worse arbitrary order such as alphabetical ordering is chosen.

#Simple Local-Optimum Algorithm

The seriation problem is NP-hard as it is related to the well-known traveling sales man problem. Hence, what we present here is a sub-optimal solution that balances complexity and accuracy. There are other available algorithms for seriation, but they are more time consuming and harder to apply. For example, dendrogram seriation using simulated annealing, or multi-dimensional scaling, or principal components analysis, or using Pearson product moment correlation. However, for the purpose of information visualization, the our results are good enough.

We present how to use <i>local dendorgram seriation</i> to put elements into a meaningful order. Dendrogram seriations orders elements within hierarchical clusters into a linear sequence based on their similarity. The elements must be members of a metric space, ie there must be a metric distance be defined between the elements. 

<center>![Dendrogram.png](%assets_url%/files/5a/o2qd392ox4rs5hs4xq3881m9fqec98/dendrogram.png)</center>

The algorithm works as follows


-  First a hierarchical clustering algorithm is applied on the elements. This results in a tree of clusters with the elements as its leaves. Such a tree is called <i>dendrogram</i>. 
-  Then, a local-optimum strategy is applied to order the dendrogram's leaves . The strategy is recursively applied on the whole tree and goes as follows:
-  Given a subtree with nodes L and R, each with child nodes A and B respectively C and D. The children A and B, respectively C and D, are rearranged (ie swapped) such that the distance between the right child of L and the left child of R becomes minimal. 
-  As the result of this strategy, the leaves of the dendrogram are ordered in a seriation.

The seriation problem is related to and as hard as the famous traveling sales man problem. As we use a local-optimum strategy, our solution is not optimal on a global scale, but still good enough for our purpose.

#Examples

<i>Under construction&hellip;</i>

#Related Work

The technique described on this page has been successfully used in the design of several visualizations, see Ownership Map [Girba 2005], Distribution Matrix [Ducasse 2006], Semantic Clustering [Kuhn 2005], Semantic Dependency Matrix [Lungu 2007] and many more. 

To learn more about dendrogram seriation please refer to the following sources


-  Steven Morris, Benyam Asnake and Gary Yen, "Dendrogram seriation using simulated annealing," Information Visualization, vol. 2, no. 2, 2003, pp. 95&ndash;104.
-  Gruvaeus G, Wainer H. "Two additions to hierarchical cluster analysis," British Journal of Mathematical and Statistical Psychology 1972; 25: 200&ndash;206. 
-  Jacques Bertin, Graphische Semiologie, Walter de Gruyter, 1974.
