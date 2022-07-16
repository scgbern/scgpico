---
Title: Automatically Collecting Source Code for API Usage Analysis
---
#Automatically Collecting Source Code for API Usage Analysis
KOWALSKI enables the automated collection of Maven projects depending on a specific API.
This requires a query that qualifies the API in focus, binaries of all dependents are then collected and available for API usage analysis.

Mostly reusable libraries are published on Maven, yet some projects depending on an API may only be available as sources on GitHub.
The goal of this project is to extend the search of API dependents to GitHub projects.
The KOWALSKI pipeline should be extended to find and download and build these projects.
We can then compare the projects published on Maven and those available on GitHub to identify qualitative differences and their value for API usage analysis.

Contact: [Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
