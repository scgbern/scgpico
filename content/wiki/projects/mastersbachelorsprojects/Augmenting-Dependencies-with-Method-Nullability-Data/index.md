---
Title: Augmenting Dependencies with Method Nullability Data
---

In an empirical study we have measured how often which methods of an API are checked for null.
This nullability information can be used to infer method nullness, so that we can suggest to developers which methods they need to check and which they do not need to if they are exploring an unfamiliar or undocumented API.
We have built an Eclipse plugin that integrates this information into the source code editor by deriving external annotations and extending the documentation.
Warnings for potential null dereferences and unnecessary null checks are highlighted in the source code.

In its current state manual work is required to configure the plugin to use the nullability data of an API.
As we focus on APIs provided as Maven dependencies, the plugin should be able to use Maven to resolve the required nullability data as well.
This requires to extend the plugin to automatically adjust the project configuration and hook into the Maven build pipeline to fetch nullability data of dependencies.

Contact: [Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
