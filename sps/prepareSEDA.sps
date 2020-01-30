* Encoding: UTF-8.
****************************************************************************
* Title: Import and Clean SEDA Data
* Author: William Murrah
* Description:  Import SEDA_District.csv data and prepare data
*                    for analyses. 
***************************************************************************/

************************** Open/Import data******************************.
PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\wmm0017\Projects\QMER\SEDA\Data\SEDA_District.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  leaid AUTO
  leanm AUTO
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
  gslo AUTO
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


***** Prepare Variables **********.

variable labels
leaid	"LEA ID"
leaname	"LEA Name"
year	"spring of school year"
grade	"Grade Level"
fips	"Fips State Code"
stateabb	"State Abbreviation"
urban	"city/urban locale"
suburb	"suburban locale"
town	"town locale"
rural	"rural locale"
perind	"percent native americans in the grade"
perasn	"percent asians in the grade"
perhsp	"percent hispanics in the grade"
perblk	"percent blacks in the grade"
perwht	"percent whites in the grade"
perfl	"percent free lunch "
perrl	"percent reduced lunch"
perfrl	"percent free and reduced lunch"
perecd	"percent economically disadvantaged in the grade"
perell	"% of all Students in District that are ELL"
perspeced	"% of all Students in District that are Special Ed"
totenrl	"Number of Students in Grade"
gslo	"Lowest Grade Offered in District"
gshi	"Highest Grade Offered in District"
hswhtblk	"Information index between schools: White/Black"
hswhthsp	"Information index between schools: White/Hispanic"
hsflnfl	"Information index between schools: Free Lunch/Non Free Lunch"
hsecdnec	"Information index between schools:ECD/Non ECD"
rswhtblk	"Relative Diversity index between schools: White/Black"
rswhthsp	"Relative Diversity index between schools: White/Hispanic"
rsflnfl	"Relative Diversity index between schools: Free Lunch/Non Free Lunch"
rsecdnec	"Relative Diversity index between schools:Economically Disadvantaged/Non ECD"
sesall	"ses composite, eb estimate, all families, time-varying"
sesblk	"ses composite, eb estimate, black families, time-varying"
seshsp	"ses composite, eb estimate, hispanic families, time-varying"
seswht	"ses composite, eb estimate, white families, time-varying"
lninc50all	"log of median income, eb estimate, all families, time-varying"
lninc50blk	"log of median income, eb estimate, black families, time-varying"
lninc50hsp	"log of median income, eb estimate, hispanic families, time-varying"
lninc50wht	"log of median income, eb estimate, white families, time-varying"
baplusall	"ba+ rate, eb estimate, all families, time-varying"
baplusblk	"ba+ rate, eb estimate, black families, time-varying"
baplushsp	"ba+ rate, eb estimate, hispanic families, time-varying"
bapluswht	"ba+ rate, eb estimate, white families, time-varying"
povertyall	"poverty rate, eb estimate, all families, time-varying"
povertyblk	"poverty rate, eb estimate, black families, time-varying"
povertyhsp	"poverty rate, eb estimate, hispanic families, time-varying"
povertywht	"poverty rate, eb estimate, white families, time-varying"
unempall	"unemployment rate, eb estimate, all families, time-varying"
unempblk	"unemployment rate, eb estimate, black families, time-varying"
unemphsp	"unemployment rate, eb estimate, hispanic families, time-varying"
unempwht	"unemployment rate, eb estimate, white families, time-varying"
snapall	"snap receipt rate, eb estimate, all families, time-varying"
snapblk	"snap receipt rate, eb estimate, black families, time-varying"
snaphsp	"snap receipt rate, eb estimate, hispanic families, time-varying"
snapwht	"snap receipt rate, eb estimate, white families, time-varying"
single_momall	"single mother HH rate, eb estimate, all families, time-varying"
single_momblk	"single mother HH rate, eb estimate, black families, time-varying"
single_momhsp	"single mother HH rate, eb estimate, hispanic families, time-varying"
single_momwht	"single mother HH rate, eb estimate, white families, time-varying"
seswhtblk	"ses composite, eb estimate, white-black gap, time-varying"
seswhthsp	"ses composite, eb estimate, white-hispanic gap, time-varying".

