---
Title: SCG Pier migration
---

The SCG website is an instance of [Pier](http://www.piercms.com), a CMS implemented in [Squeak Smalltalk](https://squeak.org).
Although it was once cutting edge technology, it is now a piece of legacy software, running on an old Smalltalk image and vm.
There is a high risk that after a future operating system upgrade, the vm will no longer work.

This project will assess the feasibility of the automated migration of the SCG Pier installation to a more modern CMS, or possibly to a static web site.
The project will entail:


-  setting up a clone of the SCG web site for experimentation 
-  the selection of a suitable target platform (the standard unibe CMS, or possibly other alternatives)
-  a feasibility study to assess different migration paths (e.g., translation from the generated HTML; generation of new web pages from within the Pier image; exporting data from Pier and translating from the snapshot)
-  assessment of automated translation technologies
-  test infrastructure to ensure consistency of migrated pages
-  migration of special web services (e.g., SCG bibliography and automated news feed)
-  redirection, if needed, of important URLs

The goal is to arrive at a completely automated migration procedure that can be run at a suitable point in the near future. 
This project would be most suitable for a Bachelors thesis.

For details please contact [Oscar Nierstrasz](%base_url%/staff/oscar)
