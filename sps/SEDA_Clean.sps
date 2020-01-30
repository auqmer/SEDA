* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/amp0129/Box Sync/5. Prof Admin/QMER Group/Data/2. Data Files/SEDA_AL_District.csv"
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  leaid AUTO
  leanm AUTO
  state AUTO
  fips AUTO
  stateabb AUTO
  grade AUTO
  year AUTO
  subject AUTO
  totgyb_all AUTO
  mn_all AUTO
  mn_all_se AUTO
  totgyb_asn AUTO
  mn_asn AUTO
  mn_asn_se AUTO
  totgyb_blk AUTO
  mn_blk AUTO
  mn_blk_se AUTO
  totgyb_ecd AUTO
  mn_ecd AUTO
  mn_ecd_se AUTO
  totgyb_fem AUTO
  mn_fem AUTO
  mn_fem_se AUTO
  totgyb_hsp AUTO
  mn_hsp AUTO
  mn_hsp_se AUTO
  totgyb_mal AUTO
  mn_mal AUTO
  mn_mal_se AUTO
  totgyb_nam AUTO
  mn_nam AUTO
  mn_nam_se AUTO
  totgyb_nec AUTO
  mn_nec AUTO
  mn_nec_se AUTO
  totgyb_wht AUTO
  mn_wht AUTO
  mn_wht_se AUTO
  mn_wag AUTO
  mn_wag_se AUTO
  mn_wbg AUTO
  mn_wbg_se AUTO
  mn_whg AUTO
  mn_whg_se AUTO
  mn_mfg AUTO
  mn_mfg_se AUTO
  mn_neg AUTO
  mn_neg_se AUTO
  urban AUTO
  suburb AUTO
  town AUTO
  rural AUTO
  perind AUTO
  perasn AUTO
  perhsp AUTO
  perblk AUTO
  perwht AUTO
  perfl AUTO
  perrl AUTO
  perecd AUTO
  perell AUTO
  perspeced AUTO
  totenrl AUTO
  gslo2 AUTO
  gshi AUTO
  hswhtblk AUTO
  hswhthsp AUTO
  hsflnfl AUTO
  hsecdnec AUTO
  rswhtblk AUTO
  rswhthsp AUTO
  rsflnfl AUTO
  rsecdnec AUTO
  perfrl AUTO
  sesall AUTO
  sesblk AUTO
  seshsp AUTO
  seswht AUTO
  lninc50all AUTO
  lninc50blk AUTO
  lninc50hsp AUTO
  lninc50wht AUTO
  baplusall AUTO
  baplusblk AUTO
  baplushsp AUTO
  bapluswht AUTO
  povertyall AUTO
  povertyblk AUTO
  povertyhsp AUTO
  povertywht AUTO
  unempall AUTO
  unempblk AUTO
  unemphsp AUTO
  unempwht AUTO
  snapall AUTO
  snapblk AUTO
  snaphsp AUTO
  snapwht AUTO
  single_momall AUTO
  single_momblk AUTO
  single_momhsp AUTO
  single_momwht AUTO
  seswhtblk AUTO
  seswhthsp AUTO
  @_merge AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


cd '/Users/amp0129/Box Sync/5. Prof Admin/QMER Group/Data/3. Syntax'.

VARIABLE LABELS 
leaid 'LEA ID'
leanm 'LEA Name'
state 'State'

VARIABLE LABELS 
leaidC	'NCES ID - Geographic School Districts'
leanm	'District Name'
fips	'FIPS State Code'
stateabb	'State Abbreviation'
grade	'Tested Grade (g)'
year	'Spring of Tested Year (y)'
subject	'Tested Subject (b)'
totgyb_all	'Sample Size for All Estimates (number of tests in gyb)'
mn_all	'Geo Dist gyb Ach Mean, All Students, CS'
mn_all_se	'Geo Dist gyb SE of Ach Mean, All Students, CS'
totgyb_asn	'Sample Size for Asian Estimates (number of tests in gyb)'
mn_asn	'Geo Dist gyb Ach Mean, Asian Students, CS'
mn_asn_se	'Geo Dist gyb SE of Ach Mean, Asian Students, CS'
totgyb_blk	'Sample Size for Black Estimates (number of tests in gyb)'
mn_blk	'Geo Dist gyb Ach Mean, Black Students, CS'
mn_blk_se	'Geo Dist gyb SE of Ach Mean, Black Students, CS'
totgyb_ecd	'Sample Size for Econ Disadv (ECD) Estimates (number of tests in gyb)'
mn_ecd	'Geo Dist gyb Ach Mean, Econ Disadv (ECD) Students, CS'
mn_ecd_se	'Geo Dist gyb SE of Ach Mean, Econ Disadv (ECD) Students, CS'
totgyb_fem	'Sample Size for Female Estimates (number of tests in gyb)'
mn_fem	'Geo Dist gyb Ach Mean, Female Students, CS'
mn_fem_se	'Geo Dist gyb SE of Ach Mean, Female Students, CS'
totgyb_hsp	'Sample Size for Hispanic Estimates (number of tests in gyb)'
mn_hsp	'Geo Dist gyb Ach Mean, Hispanic Students, CS'
mn_hsp_se	'Geo Dist gyb SE of Ach Mean, Hispanic Students, CS'
totgyb_mal	'Sample Size for Male Estimates (number of tests in gyb)'
mn_mal	'Geo Dist gyb Ach Mean, Male Students, CS'
mn_mal_se	'Geo Dist gyb SE of Ach Mean, Male Students, CS'
totgyb_nam	'Sample Size for  Estimates (number of tests in gyb)'
mn_nam	'Geo Dist gyb Ach Mean,  Students, CS'
mn_nam_se	'Geo Dist gyb SE of Ach Mean,  Students, CS'
totgyb_nec	'Sample Size for Non-ECD Estimates (number of tests in gyb)'
mn_nec	'Geo Dist gyb Ach Mean, Non-ECD Students, CS'
mn_nec_se	'Geo Dist gyb SE of Ach Mean, Non-ECD Students, CS'
totgyb_wht	'Sample Size for White Estimates (number of tests in gyb)'
mn_wht	'Geo Dist gyb Ach Mean, White Students, CS'
mn_wht_se	'Geo Dist gyb SE of Ach Mean, White Students, CS'
mn_wag	'Geo Dist gyb Estimated White-Asian Gap, CS'
mn_wag_se	'Geo Dist gyb SE of White-Asian Gap Estimate, CS'
mn_wbg	'Geo Dist gyb Estimated White-Black Gap, CS'
mn_wbg_se	'Geo Dist gyb SE of White-Black Gap Estimate, CS'
mn_whg	'Geo Dist gyb Estimated White-Hispanic Gap, CS'
mn_whg_se	'Geo Dist gyb SE of White-Hispanic Gap Estimate, CS'
mn_mfg	'Geo Dist gyb Estimated Male-Female Gap, CS'
mn_mfg_se	'Geo Dist gyb SE of Male-Female Gap Estimate, CS'
mn_neg	'Geo Dist gyb Estimated Non ECD-ECD Gap, CS'
mn_neg_se	'Geo Dist gyb SE of Non ECD-ECD Gap Estimate, CS'
leaid	'LEA ID'
leaname	'LEA Name'
year	'spring of school year'
grade	'Grade Level'
fips	'Fips State Code'
stateabb	'State Abbreviation'
urban	'city/urban locale'
suburb	'suburban locale'
town	'town locale'
rural	'rural locale'
perind	'percent native americans in the grade'
perasn	'percent asians in the grade'
perhsp	'percent hispanics in the grade'
perblk	'percent blacks in the grade'
perwht	'percent whites in the grade'
perfl	'percent free lunch '
perrl	'percent reduced lunch'
perfrl	'percent free and reduced lunch'
perecd	'percent economically disadvantaged in the grade'
perell	'% of all Students in District that are ELL'
perspeced	'% of all Students in District that are Special Ed'
totenrl	'Number of Students in Grade'
gslo2	'Lowest Grade Offered in District'
gshi	'Highest Grade Offered in District'
hswhtblk	'Information index between schools: White/Black'
hswhthsp	'Information index between schools: White/Hispanic'
hsflnfl	'Information index between schools: Free Lunch/Non Free Lunch'
hsecdnec	'Information index between schools:ECD/Non ECD'
rswhtblk	'Relative Diversity index between schools: White/Black'
rswhthsp	'Relative Diversity index between schools: White/Hispanic'
rsflnfl	'Relative Diversity index between schools: Free Lunch/Non Free Lunch'
rsecdnec	'Relative Diversity index between schools:Economically Disadvantaged/Non ECD'
sesall	'ses composite, eb estimate, all families, time-varying'
sesblk	'ses composite, eb estimate, black families, time-varying'
seshsp	'ses composite, eb estimate, hispanic families, time-varying'
seswht	'ses composite, eb estimate, white families, time-varying'
lninc50all	'log of median income, eb estimate, all families, time-varying'
lninc50blk	'log of median income, eb estimate, black families, time-varying'
lninc50hsp	'log of median income, eb estimate, hispanic families, time-varying'
lninc50wht	'log of median income, eb estimate, white families, time-varying'
baplusall	'ba+ rate, eb estimate, all families, time-varying'
baplusblk	'ba+ rate, eb estimate, black families, time-varying'
baplushsp	'ba+ rate, eb estimate, hispanic families, time-varying'
bapluswht	'ba+ rate, eb estimate, white families, time-varying'
povertyall	'poverty rate, eb estimate, all families, time-varying'
povertyblk	'poverty rate, eb estimate, black families, time-varying'
povertyhsp	'poverty rate, eb estimate, hispanic families, time-varying'
povertywht	'poverty rate, eb estimate, white families, time-varying'
unempall	'unemployment rate, eb estimate, all families, time-varying'
unempblk	'unemployment rate, eb estimate, black families, time-varying'
unemphsp	'unemployment rate, eb estimate, hispanic families, time-varying'
unempwht	'unemployment rate, eb estimate, white families, time-varying'
snapall	'snap receipt rate, eb estimate, all families, time-varying'
snapblk	'snap receipt rate, eb estimate, black families, time-varying'
snaphsp	'snap receipt rate, eb estimate, hispanic families, time-varying'
snapwht	'snap receipt rate, eb estimate, white families, time-varying'
single_momall	'single mother HH rate, eb estimate, all families, time-varying'
single_momblk	'single mother HH rate, eb estimate, black families, time-varying'
single_momhsp	'single mother HH rate, eb estimate, hispanic families, time-varying'
single_momwht	'single mother HH rate, eb estimate, white families, time-varying'
seswhtblk	'ses composite, eb estimate, white-black gap, time-varying'
seswhthsp	'ses composite, eb estimate, white-hispanic gap, time-varying'

