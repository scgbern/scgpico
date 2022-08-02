---
Title: Identify Non-Nullable Methods
---
#Identify Non-Nullable Methods
#Project Idea

<div align="justify">

We have found in a manual inspection that some null checks are unnecessary, as they check the return value of a method that always returns a non-null reference.
Currently, we lack an automated procedure that decides if a method always returns a non-null reference.
The goal of this project is to design and implement a static analysis tool that processes method implementations and decides if their return value is guaranteed to be non-null.
The analysis can then be integrated into an IDE plugin that detects unnecessary null checks.

</div>

#Contact
[Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
