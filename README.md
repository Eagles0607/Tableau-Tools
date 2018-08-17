# Tableau-Tools
A collection of tools for working with Tableau.

### The Ruby Workbook gem &mdash; 'twb'

The foundation of the Ruby Tableau Tools, the twb gem provides access to a Tableau workbook's internals. It works with normal *twb* and packaged *twbx* workbooks.

In order to use the the twb gem is must be installed, most commonly at the command line via:

    > gem install 'twb'

Once installed, access to the gem by Ruby code is enabled by this line:

    require 'twb'


As provided, the tools are run as Ruby scripts from the command line like so:

    > ruby '{path}{scriptfile}'

e.g.    

    > ruby 'c:\bin\analyzeCalculatedFields.rb'
    or
    > ruby 'c:\bin\analyzeSheetFields.rb'


By design 

- the tools operate upon all of the Workbooks in the current directory
- documentation and data are prepared and placed in the subdirectory '.\ttdoc' immediately below the current directory

Documentation is prepared in PDF, PNG, and Markdown files. These are normally specific to individual Workbooks, and named with the Workbook's name appended with content and file type suffixes.

Data is prepared as CSV files, also placed in the ttdoc subdirectory. CSV files include the data from all of the Workbooks analyzed and are specific to the type of Workbook elements being analyzed, e.g.

- Workbooks, their Data Sources, and the Data Sources's calculated fields are captured in separately, as are
- Workbooks, their Worksheets, and the Fields each Worksheet accesses.

Multiple CSV files can be related to reveal complex relationships, e.g. 

- The files above can be joined (or blended) to identify which Dashboards contain calculated fields, even which ones contain a specific calculated field.<br />This makes is possible to determine where changes to a calculated field will show up.


Twb also offers methods for manipulating Workbooks, including updating and adding content, and writing them out as valid *.twb files.
