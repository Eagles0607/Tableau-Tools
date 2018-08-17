# Tableau-Tools
A collection of tools for working with Tableau.

### The Ruby Workbook gem &mdash; 'twb'

The foundation of the Ruby Tableau Tools, the twb gem provides access to a Tableau workbook's internals. It works with normal *twb* and packaged *twbx* workbooks.

As provided, the tools are run as Ruby scripts from the command line like so:

    > ruby '{path}{scriptfile}'

e.g.    

    > ruby 'c:\bin\analyzeSheetFilters.rb'

By design 

- the tools operate upon all of the Workbooks in the current directory
- documenation and data are prepared and placed in the subdirectory '.\ttdoc' immediately below the current directory

Documentation is prepared in the form of PDF, PNG, and Markdown files. These are normally specific to individual Workbooks, and named with the Workbook's name appended with content and file type suffixes.

Data is prepared as CSV files, also placed in the ttdoc subdirectory. CSV files are specific to the type of Workbook element being analyzed, e.g.

- Workbooks, their Data Sources, and the Data Sources's calculated fields are captured in separately, as are
- Workbooks, their Worksheets, and the Fields each Worksheet accesses.

Multiple CSV files can be related to reveal complex relationships, e.g. 

- The files above can be joined (or blended) to identify which Dashboards contain calculated fields, even which ones contain a specific calculated field.<br />This makes is possible to determine where changes to a calculated field will show up.


Twb also offers methods for manipulating Workbooks, including updating and adding content, and writing them out as valid *.twb files.
