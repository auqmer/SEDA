* Encoding: UTF-8.
* Variable Creation.


INCLUDE '/Users/amp0129/Box Sync/5. Prof Admin/QMER Group/Data/3. Syntax/SEDA_Import.sps'.

* Lets make a variable for all of the locales: suburb urban rural town.



DATASET ACTIVATE DataSet1.
COMPUTE locale=sysmis.
EXECUTE.

IF (suburb eq 1) locale = 1.
IF (urban eq 1) locale = 2.
IF (rural eq 1) locale = 3.
if (town eq 1) locale = 4. 
execute.

value labels
/ locale 1 'suburban' 2 'urban' 3 'rural' 4 'town'.

variable labels 
locale '1S 2U 3R 4T'. 


* Check to make sure it worked.
FREQUENCIES VARIABLES=suburb urban rural town locale
  /ORDER=ANALYSIS.

* Make sure to document this somewhere. Probably in your Variable Codebook & Log File too.


* Visual Binning.
*rswhtblk.
RECODE  rswhtblk (MISSING=COPY) (LO THRU 0=1) (LO THRU 0.016599253=2) (LO THRU 0.10894191=3) (LO 
    THRU HI=4) (ELSE=SYSMIS) INTO rstwhtblkQ.
VARIABLE LABELS  rstwhtblkQ 'WB Diversity Quartiles'.
FORMATS  rstwhtblkQ (F5.0).
VALUE LABELS  rstwhtblkQ 1 '' 2 '' 3 '' 4 ''.
VARIABLE LEVEL  rstwhtblkQ (ORDINAL).
EXECUTE.


* Lets take a look.

EXAMINE VARIABLES=mn_all BY locale
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.


EXAMINE VARIABLES=mn_all BY rstwhtblkQ
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
