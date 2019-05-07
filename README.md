# CompNetOpt
Code I have used in the paper "A Load Balancing Inspired Optimization Framework for Exascale Multicore Systems: A Complex Networks Approach"

# Tutorials: 
TBD

# Further Modifications:
1. We removed the constraints of pipeline parallelism. Now, this framework can be applied to all high level C/C++ code.
2. We removed rdtsc functions since some were complaining about the overhead.

# Special Thanks:
1. Contech tool. We built on this tool to profile applications. 
https://github.com/bprail/contech

2. Modularity based community detection.
We used the following code in the original paper.
https://www.cs.unm.edu/~aaron/research/fastmodularity.htm
Later, we found out that this code performed better.
https://sites.google.com/site/findcommunities/
