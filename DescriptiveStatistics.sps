* Encoding: UTF-8.
****************************************************************************
* Title: Homework 1 syntax file
* Author: William Murrah
* Description: Syntax file to complete requirements of first 
*                   homework assignment.
***************************************************************************.
* Load Data file.
CD "C:\Users\wmm0017\Dropbox\AU\1_Teaching\ERMA_7300_DesignAndAnalysis_I".
GET FILE = "Data\DescriptiveStatistics.sav".

*Define variable labels.
VARIABLE LABELS 
ID  'identification number'
GENDER  'gender of applicant'
SES 'socio-economic status'
ETHNIC 'ethnicity of applicant'
GREQ 'GRE Quantitative section'
GREV 'GRE Verbal section'
PRETEST ' subject area pretest'
RATING1 'rating from faculty Interview 1'
RATING2 'rating from faculty interview 2'.

*Define value lables for nominal and ordinal variables.
VALUE LABELS 
 /GENDER 
                1 'male'
                 2 'female'
/SES    
                 1 'lower'
                 2 'middle'
                 3 'upper'
/ETHNIC     
                1 'white' 
                2 'african-american'
                3 'asian'
                4 'hispanic'.

* Set measurement level for variables.
VARIABLE LEVEL  
/ID ETHNIC GENDER (NOMINAL)
/SES (ORDINAL)
/GREQ GREV PRETEST RATING1 RATING2 (SCALE).


* ********************* Frequencies ************************.
* Descriptives for all variables.
DESCRIPTIVES VARIABLES=gender ses ethnic greq grev 
pretest rating1 rating2
  /STATISTICS=MEAN STDDEV VARIANCE RANGE MIN MAX.

* Frequencies for all variables except GRE and pretest variables which are 
  continuous and would result in long output.
FREQUENCIES VARIABLES=gender ses ethnic rating1 rating2
  /STATISTICS=STDDEV VARIANCE RANGE MINIMUM
                       MAXIMUM MEAN MEDIAN MODE
  /ORDER=ANALYSIS.

* ****************** Graphs *********************************.
GRAPH  /BAR    ethnic.

GRAPH    /HISTOGRAM    GREV.
GRAPH    /HISTOGRAM    GREQ.

* ******************* Compare by Gender **************************.
EXAMINE VARIABLES=greq grev pretest rating1 rating2 BY gender
  /PLOT BOXPLOT STEMLEAF
  /COMPARE GROUPS
  /PERCENTILES(5,10,25,50,75,90,95) HAVERAGE
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

DATASET ACTIVATE DataSet1.
MEANS TABLES=greq grev pretest rating1 rating2 BY gender
  /CELLS=MEAN COUNT STDDEV.

* ****************** Create composite scores ****************************.
COMPUTE avg_rating=mean(rating1, rating2).
EXECUTE.

VARIABLE LABELS avg_rating 'average of two ratings.'.







 

                
               
                   


