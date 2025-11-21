# Lab 11 - Memory Management
## answer.md

### To-do1-1
si: memory swapped in from disk (kB/s)  
so: memory swapped out to disk (kB/s)  
bi: blocks read from disk (blocks/s)  
bo: blocks written to disk (blocks/s)  

File vmstat_output contains the output of vmstat 2 8

### To-do2-1 First-fit allocation

Process    Starting Address    Ending Address
P1         600650              601006
P2         601050              601259
P3         601400              601867
P4         cannot allocate     cannot allocate

### To-do2-2 Best-fit allocation

Process    Starting Address    Ending Address
P1         600650              601006
P2         601050              601259
P3         601400              601867
P4         cannot allocate     cannot allocate

### To-do2-3 Discussion
Both first-fit and best-fit suffer from external fragmentation.  
After placing P1, P2, and P3 there is still plenty of total free memory left (43 KB + 40 KB + 32 KB wasted inside the three used partitions), but no single hole is big enough for P4 (491 KB).  
First-fit tends to use low-address holes quickly, while best-fit tries to save space but still creates many tiny unusable holes. In both cases contiguous allocation fails even when enough total memory exists.

### To-do3-1
Physical memory = 16 TB = 2^44 bytes  
Page size = 4 KB = 2^12 bytes  
Number of frames = 2^44 / 2^12 = 2^32 frames

### To-do3-2
Page size 4 KB = 2^12 bytes → 12 bits needed for offset

### To-do3-3
36 bits page number + 12 bits offset = 48-bit logical address  
Maximum virtual memory = 2^48 bytes = 256 TB

