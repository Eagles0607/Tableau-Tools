# analyzeCalculatedFields.rb &mdash; usage

### Prerequisites:

- Ruby is installed on your system
- The twb gem is installed
- analyzeCalculatedFields.rb is available at **{path}**
- The directory contains the Tableau Sample Workbooks
---
    > dir \*.t\*
      Volume in drive...
      Volume Serial Number is...
      
       Directory of {path}\Tableau Sample Workbooks
      
      06/27/2018  10:32 PM           605,080 Regional.twbx
      06/27/2018  10:32 PM         1,091,332 Superstore.twbx
      06/27/2018  10:32 PM           533,181 World Indicators.twbx
                   3 File(s)      2,229,593 bytes
---

### Execute analyzeCalculatedFields.rb
---
    > ruby '{path}\analyzeCalculatedFields.rb'
--- 

### analyzeCalculatedFields.rb generates this as it executes:
---

    Twb::Analysis::CalculatedFieldsAnalyzer
    Analyzing Calculated Fields from Tableau Workbooks.
  
  
    Processing Workbooks matching: '["*.twb", "*.twbx"]'

        - Regional.twbx
        - Superstore.twbx
        - World Indicators.twbx
     
     
    Analysis complete, found: 3 Workbooks
    Calculated  fields: 91
    Fields in Formulas: 186
                   in: 3 Workbooks
              # nodes:      137  occurrences of      137 unique nodes
              # edges:      127       ''             127   ''   edges
    
    For documentation and generated data see the following:

     - ./ttdoc/TwbCalculatedFieldFormulaLines.csv    Calculated fields and their formulas' individual lines.
     - ./ttdoc/TwbCalculatedFields.csv               Calculated fields and their formulas.
     - ./ttdoc/TwbFormulaFields.csv                  Calculated fields and the fields their formulas reference.


    That's all, folks.
--- 

The CSV files can now be used to identify the Calculated Fields, their Formulas, the fields they reference, the Workbooks and Data Sources they are from. The provided Tableau Workbook: 'Calculated Fields - Base Data.twbx' connects to each of the CSV files and has a starter Worksheet for each, [downloadable from here](https://github.com/ChrisGerrard/Tableau-Tools/blob/master/Ruby/analysis/ttdoc/Calculated%20Fields%20-%20Base%20Data.twbx "abc"). 

One sheet is shown here:
![Tableau Workbook - Calculated Fields - Base Data.twbx](https://github.com/ChrisGerrard/Tableau-Tools/blob/master/Ruby/analysis/ttdoc/Calculated%20Fields%20-%20Base%20Data%2C%20Calculated%20Field%20Formula%20Lines%20sheet.PNG)

Workbook notes:
- The Workbook is configured to pick up the CSV files from the current directory; this will be hard wired to whichever directory the Data Sources are using when the Workbook is saved.
- The Workbook is packaged simply to avoid GitHub from presenting it as XML text by default &ndash; this can be confusing to people who aren't aware of or used to seeing Workbooks as XML.
