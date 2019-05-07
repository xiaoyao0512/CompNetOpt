# CompNetOpt
Code I have used in the paper "A Load Balancing Inspired Optimization Framework for Exascale Multicore Systems: A Complex Networks Approach"

# Tutorials: 
(TP_C.pl or TP_C++.pl are scripts to automate the whole profiling process.)

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

# Near-term Plans:
1. Make the code clean and add comments.

# Future Plans
1. We are thinking to use this tool to generate traces.
https://github.com/ysshao/LLVM-Tracer

2. Connect it with gem5 for ease of verification.
https://github.com/gem5/gem5

# Questions
If you have any concerns or suggestions, feel free to send me (xiaoyao at usc.edu) emails. We would like to see your valuable feedback.
