///// SEDA_District.csv Label & Setup ////


/// Set Working Drive ///
cd " "
import delimited Data/SEDA_District.csv, varnames(1) case(preserve)

/// Variable lables ///

{
lab var	leaid	"NCES ID - Geographic School Districts"
lab var	leanm	"District Name"
lab var	fips	"FIPS State Code"
lab var	stateabb	"State Abbreviation"
lab var	grade	"Tested Grade (g)"
lab var	year	"Spring of Tested Year (y)"
lab var	subject	"Tested Subject (b)"
lab var	totgyb_all	"Sample Size for All Estimates (number of tests in gyb)"
lab var	mn_all	"Geo Dist gyb Ach Mean, All Students, CS"
lab var	mn_all_se	"Geo Dist gyb SE of Ach Mean, All Students, CS"
lab var	totgyb_asn	"Sample Size for Asian Estimates (number of tests in gyb)"
lab var	mn_asn	"Geo Dist gyb Ach Mean, Asian Students, CS"
lab var	mn_asn_se	"Geo Dist gyb SE of Ach Mean, Asian Students, CS"
lab var	totgyb_blk	"Sample Size for Black Estimates (number of tests in gyb)"
lab var	mn_blk	"Geo Dist gyb Ach Mean, Black Students, CS"
lab var	mn_blk_se	"Geo Dist gyb SE of Ach Mean, Black Students, CS"
lab var	totgyb_ecd	"Sample Size for Econ Disadv (ECD) Estimates (number of tests in gyb)"
lab var	mn_ecd	"Geo Dist gyb Ach Mean, Econ Disadv (ECD) Students, CS"
lab var	mn_ecd_se	"Geo Dist gyb SE of Ach Mean, Econ Disadv (ECD) Students, CS"
lab var	totgyb_fem	"Sample Size for Female Estimates (number of tests in gyb)"
lab var	mn_fem	"Geo Dist gyb Ach Mean, Female Students, CS"
lab var	mn_fem_se	"Geo Dist gyb SE of Ach Mean, Female Students, CS"
lab var	totgyb_hsp	"Sample Size for Hispanic Estimates (number of tests in gyb)"
lab var	mn_hsp	"Geo Dist gyb Ach Mean, Hispanic Students, CS"
lab var	mn_hsp_se	"Geo Dist gyb SE of Ach Mean, Hispanic Students, CS"
lab var	totgyb_mal	"Sample Size for Male Estimates (number of tests in gyb)"
lab var	mn_mal	"Geo Dist gyb Ach Mean, Male Students, CS"
lab var	mn_mal_se	"Geo Dist gyb SE of Ach Mean, Male Students, CS"
lab var	totgyb_nam	"Sample Size for  Estimates (number of tests in gyb)"
lab var	mn_nam	"Geo Dist gyb Ach Mean,  Students, CS"
lab var	mn_nam_se	"Geo Dist gyb SE of Ach Mean,  Students, CS"
lab var	totgyb_nec	"Sample Size for Non-ECD Estimates (number of tests in gyb)"
lab var	mn_nec	"Geo Dist gyb Ach Mean, Non-ECD Students, CS"
lab var	mn_nec_se	"Geo Dist gyb SE of Ach Mean, Non-ECD Students, CS"
lab var	totgyb_wht	"Sample Size for White Estimates (number of tests in gyb)"
lab var	mn_wht	"Geo Dist gyb Ach Mean, White Students, CS"
lab var	mn_wht_se	"Geo Dist gyb SE of Ach Mean, White Students, CS"
lab var	mn_wag	"Geo Dist gyb Estimated White-Asian Gap, CS"
lab var	mn_wag_se	"Geo Dist gyb SE of White-Asian Gap Estimate, CS"
lab var	mn_wbg	"Geo Dist gyb Estimated White-Black Gap, CS"
lab var	mn_wbg_se	"Geo Dist gyb SE of White-Black Gap Estimate, CS"
lab var	mn_whg	"Geo Dist gyb Estimated White-Hispanic Gap, CS"
lab var	mn_whg_se	"Geo Dist gyb SE of White-Hispanic Gap Estimate, CS"
lab var	mn_mfg	"Geo Dist gyb Estimated Male-Female Gap, CS"
lab var	mn_mfg_se	"Geo Dist gyb SE of Male-Female Gap Estimate, CS"
lab var	mn_neg	"Geo Dist gyb Estimated Non ECD-ECD Gap, CS"
lab var	mn_neg_se	"Geo Dist gyb SE of Non ECD-ECD Gap Estimate, CS"
lab var	urban	"city/urban locale"
lab var	suburb	"suburban locale"
lab var	town	"town locale"
lab var	rural	"rural locale"
lab var	perind	"percent native americans in the grade"
lab var	perasn	"percent asians in the grade"
lab var	perhsp	"percent hispanics in the grade"
lab var	perblk	"percent blacks in the grade"
lab var	perwht	"percent whites in the grade"
lab var	perfl	"percent free lunch "
lab var	perrl	"percent reduced lunch"
lab var	perfrl	"percent free and reduced lunch"
lab var	perecd	"percent economically disadvantaged in the grade"
lab var	perell	"% of all Students in District that are ELL"
lab var	perspeced	"% of all Students in District that are Special Ed"
lab var	totenrl	"Number of Students in Grade"
lab var	gslo	"Lowest Grade Offered in District"
lab var	gshi	"Highest Grade Offered in District"
lab var	hswhtblk	"Information index between schools: White/Black"
lab var	hswhthsp	"Information index between schools: White/Hispanic"
lab var	hsflnfl	"Information index between schools: Free Lunch/Non Free Lunch"
lab var	hsecdnec	"Information index between schools:ECD/Non ECD"
lab var	rswhtblk	"Relative Diversity index between schools: White/Black"
lab var	rswhthsp	"Relative Diversity index between schools: White/Hispanic"
lab var	rsflnfl	"Relative Diversity index between schools: Free Lunch/Non Free Lunch"
lab var	rsecdnec	"Relative Diversity index between schools:Economically Disadvantaged/Non ECD"
lab var	sesall	"ses composite, eb estimate, all families, time-varying"
lab var	sesblk	"ses composite, eb estimate, black families, time-varying"
lab var	seshsp	"ses composite, eb estimate, hispanic families, time-varying"
lab var	seswht	"ses composite, eb estimate, white families, time-varying"
lab var	lninc50all	"log of median income, eb estimate, all families, time-varying"
lab var	lninc50blk	"log of median income, eb estimate, black families, time-varying"
lab var	lninc50hsp	"log of median income, eb estimate, hispanic families, time-varying"
lab var	lninc50wht	"log of median income, eb estimate, white families, time-varying"
lab var	baplusall	"ba+ rate, eb estimate, all families, time-varying"
lab var	baplusblk	"ba+ rate, eb estimate, black families, time-varying"
lab var	baplushsp	"ba+ rate, eb estimate, hispanic families, time-varying"
lab var	bapluswht	"ba+ rate, eb estimate, white families, time-varying"
lab var	povertyall	"poverty rate, eb estimate, all families, time-varying"
lab var	povertyblk	"poverty rate, eb estimate, black families, time-varying"
lab var	povertyhsp	"poverty rate, eb estimate, hispanic families, time-varying"
lab var	povertywht	"poverty rate, eb estimate, white families, time-varying"
lab var	unempall	"unemployment rate, eb estimate, all families, time-varying"
lab var	unempblk	"unemployment rate, eb estimate, black families, time-varying"
lab var	unemphsp	"unemployment rate, eb estimate, hispanic families, time-varying"
lab var	unempwht	"unemployment rate, eb estimate, white families, time-varying"
lab var	snapall	"snap receipt rate, eb estimate, all families, time-varying"
lab var	snapblk	"snap receipt rate, eb estimate, black families, time-varying"
lab var	snaphsp	"snap receipt rate, eb estimate, hispanic families, time-varying"
lab var	snapwht	"snap receipt rate, eb estimate, white families, time-varying"
lab var	single_momall	"single mother HH rate, eb estimate, all families, time-varying"
lab var	single_momblk	"single mother HH rate, eb estimate, black families, time-varying"
lab var	single_momhsp	"single mother HH rate, eb estimate, hispanic families, time-varying"
lab var	single_momwht	"single mother HH rate, eb estimate, white families, time-varying"
lab var	seswhtblk	"ses composite, eb estimate, white-black gap, time-varying"
lab var	seswhthsp	"ses composite, eb estimate, white-hispanic gap, time-varying"
}
/////
/// Vairable Corrections ///
encode stateabb, gen(state)
order state, after(leanm)
encode gslo, gen(gslo2)
order gslo2, after (totenrl)
drop gslo
replace gshi = "0" if gshi=="Pre-Kindergarten"
destring gshi, replace
encode subject, gen(subject2)
order subject2, after(subject)
drop subject
rename subject2 subject




