#' @title Labour Force Survey Public Use Microdata Files (2018-2022)
#' @rdname lfs_pumf
#' @name lfs_pumf
#' @description From StatCan: This public use microdata file (PUMF) contains
#'   non-aggregated data for a wide variety of variables
#'   collected from the Labour Force Survey (LFS) in 2018.
#'   The LFS collects monthly information on
#'   the labour market activities of Canada's working age population.
#'   This product is for users who prefer to do their own analysis
#'   by focusing on specific subgroups in the population
#'   or by cross-classifying variables that are not in
#'   our catalogued products.
#'   For more information about this survey
#'   (questionnaires, definitions, data sources and methods used):
#'   \href{https://www23.statcan.gc.ca/imdb/p2SV.pl?Function=getSurvey&SDDS=3701}{Labour Force Survey}
#'
#'   Data are provided for each year from 2018 to 2022.
#'   Each year's data are offered in raw (e.g. \code{lfs_pumf_2018__raw})
#'   and labelled (e.g. \code{lfs_pumf_2018__labelled}).
#'   Unless you have a specific reason to use the raw data,
#'   use the labelled data for the year or years you need.
#'
#'   The raw data are provided as a list of two data frames:
#'   \describe{
#'     \item{\code{records}}{A data frame of records, with integer representations of categorical information.}
#'     \item{\code{codebook}}{A data frame of codebook information which provides descriptive labels.}
#'   }
#'
#'   The labelled data for a given year is a single dataframe,
#'   identical to its raw counterpart, with
#'   additional steps taken to encode categorical information as R factors.
#'
#' @source Statistics Canada. (2018, 2019, 2020, 2021, 2022) Labour Force Survey Public Use Microdata File.\url{https://doi.org/10.25318/71m0001x-eng}
#' @format The data set has 1069011 rows and 60 columns. \describe{
#'   \item{\code{REC_NUM} \code{<num>} Order of record in file [1, 99175] \code{for} All respondents}
#'   \item{\code{SURVYEAR} \code{<num>} Survey year [2020, 2020] \code{for} All respondents}
#'   \item{\code{SURVMNTH} \code{<fct>} Survey month \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} January}
#'       \item{\code{2} February}
#'       \item{\code{3} March}
#'       \item{\code{4} April}
#'       \item{\code{5} May}
#'       \item{\code{6} June}
#'       \item{\code{7} July}
#'       \item{\code{8} August}
#'       \item{\code{9} September}
#'       \item{\code{10} October}
#'       \item{\code{11} November}
#'       \item{\code{12} December}
#'     }}
#'   \item{\code{LFSSTAT} \code{<fct>} Labour force status \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Employed, at work}
#'       \item{\code{2} Employed, absent from work}
#'       \item{\code{3} Unemployed}
#'       \item{\code{4} Not in labour force}
#'     }}
#'   \item{\code{PROV} \code{<fct>} Province \code{for} All respondents}{
#'     \describe{
#'       \item{\code{10} Newfoundland and Labrador}
#'       \item{\code{11} Prince Edward Island}
#'       \item{\code{12} Nova Scotia}
#'       \item{\code{13} New Brunswick}
#'       \item{\code{24} Quebec}
#'       \item{\code{35} Ontario}
#'       \item{\code{46} Manitoba}
#'       \item{\code{47} Saskatchewan}
#'       \item{\code{48} Alberta}
#'       \item{\code{59} British Columbia}
#'     }}
#'   \item{\code{CMA} \code{<fct>} Nine largest CMAs \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Qu�bec}
#'       \item{\code{2} Montr�al}
#'       \item{\code{3} Ottawa�Gatineau (Ontario part)}
#'       \item{\code{4} Toronto}
#'       \item{\code{5} Hamilton}
#'       \item{\code{6} Winnipeg}
#'       \item{\code{7} Calgary}
#'       \item{\code{8} Edmonton}
#'       \item{\code{9} Vancouver}
#'       \item{\code{0} Other CMA or non-CMA}
#'     }}
#'   \item{\code{AGE_12} \code{<fct>} Five-year age group of respondent \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} 15 to 19 years}
#'       \item{\code{2} 20 to 24 years}
#'       \item{\code{3} 25 to 29 years}
#'       \item{\code{4} 30 to 34 years}
#'       \item{\code{5} 35 to 39 years}
#'       \item{\code{6} 40 to 44 years}
#'       \item{\code{7} 45 to 49 years}
#'       \item{\code{8} 50 to 54 years}
#'       \item{\code{9} 55 to 59 years}
#'       \item{\code{10} 60 to 64 years}
#'       \item{\code{11} 65 to 69 years}
#'       \item{\code{12} 70 and over}
#'     }}
#'   \item{\code{AGE_6} \code{<fct>} Age in 2 and 3 year groups, 15 to 29 \code{for} Respondents aged 15 to 29 years}{
#'     \describe{
#'       \item{\code{1} 15 to 16 years}
#'       \item{\code{2} 17 to 19 years}
#'       \item{\code{3} 20 to 21 years}
#'       \item{\code{4} 22 to 24 years}
#'       \item{\code{5} 25 to 26 years}
#'       \item{\code{6} 27 to 29 years}
#'     }}
#'   \item{\code{SEX} \code{<fct>} Sex of respondent \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Male}
#'       \item{\code{2} Female}
#'     }}
#'   \item{\code{MARSTAT} \code{<fct>} Marital status of respondent \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Married}
#'       \item{\code{2} Living in common-law}
#'       \item{\code{3} Widowed}
#'       \item{\code{4} Separated}
#'       \item{\code{5} Divorced}
#'       \item{\code{6} Single, never married}
#'     }}
#'   \item{\code{EDUC} \code{<fct>} Highest educational attainment \code{for} All respondents}{
#'     \describe{
#'       \item{\code{0} 0 to 8 years}
#'       \item{\code{1} Some high school}
#'       \item{\code{2} High school graduate}
#'       \item{\code{3} Some postsecondary}
#'       \item{\code{4} Postsecondary certificate or diploma}
#'       \item{\code{5} Bachelor's degree}
#'       \item{\code{6} Above bachelor's degree}
#'     }}
#'   \item{\code{MJH} \code{<fct>} Single or multiple jobholder \code{for} Currently employed only}{
#'     \describe{
#'       \item{\code{1} Single jobholder, including job changers}
#'       \item{\code{2} Multiple jobholder}
#'     }}
#'   \item{\code{EVERWORK} \code{<fct>} Identifies if a person has worked in the last year \code{for} Not currently employed}{
#'     \describe{
#'       \item{\code{1} Yes, within last year}
#'       \item{\code{2} Yes, more than 1 year ago}
#'       \item{\code{3} No, never worked}
#'     }}
#'   \item{\code{FTPTLAST} \code{<fct>} Full- or part-time status of last job \code{for} Not currently employed but worked within the previous twelve months}{
#'     \describe{
#'       \item{\code{1} Full-time (30 hours or more)}
#'       \item{\code{2} Part-time (1 to 29 hours)}
#'     }}
#'   \item{\code{COWMAIN} \code{<fct>} Class of worker, main job \code{for} Currently employed or worked within the past 12 months}{
#'     \describe{
#'       \item{\code{1} Public sector employees}
#'       \item{\code{2} Private sector employees}
#'       \item{\code{3} Self-employed incorporated, with paid help}
#'       \item{\code{4} Self-employed incorporated, no paid help}
#'       \item{\code{5} Self-employed unincorporated, with paid help}
#'       \item{\code{6} Self-employed unincorporated, no paid help}
#'       \item{\code{7} Unpaid family worker}
#'     }}
#'   \item{\code{IMMIG} \code{<fct>} Immigrant status \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Immigrant, landed 10 or less years earlier}
#'       \item{\code{2} Immigrant, landed more than 10 years earlier}
#'       \item{\code{3} Non-immigrant}
#'     }}
#'   \item{\code{NAICS_21} \code{<fct>} Industry of main job \code{for} Currently employed or worked within the past 12 months}{
#'     \describe{
#'       \item{\code{1} Agriculture}
#'       \item{\code{2} Forestry and logging and support activities for forestry}
#'       \item{\code{3} Fishing, hunting and trapping}
#'       \item{\code{4} Mining, quarrying, and oil and gas extraction}
#'       \item{\code{5} Utilities}
#'       \item{\code{6} Construction}
#'       \item{\code{7} Manufacturing - durable goods}
#'       \item{\code{8} Manufacturing - non-durable goods}
#'       \item{\code{9} Wholesale trade}
#'       \item{\code{10} Retail trade}
#'       \item{\code{11} Transportation and warehousing}
#'       \item{\code{12} Finance and insurance}
#'       \item{\code{13} Real estate and rental and leasing}
#'       \item{\code{14} Professional, scientific and technical services}
#'       \item{\code{15} Business, building and other support services}
#'       \item{\code{16} Educational services}
#'       \item{\code{17} Health care and social assistance}
#'       \item{\code{18} Information, culture and recreation}
#'       \item{\code{19} Accommodation and food services}
#'       \item{\code{20} Other services (except public administration)}
#'       \item{\code{21} Public administration}
#'     }}
#'   \item{\code{NOC_10} \code{<fct>} Occupation at main job \code{for} Currently employed or worked within the past 12 months}{
#'     \describe{
#'       \item{\code{1} Management occupations}
#'       \item{\code{2} Business, finance and administration occupations, except management}
#'       \item{\code{3} Natural and applied sciences and related occupations, except management}
#'       \item{\code{4} Health occupations, except management}
#'       \item{\code{5} Occupations in education, law and social, community and government services, except management}
#'       \item{\code{6} Occupations in art, culture, recreation and sport, except management}
#'       \item{\code{7} Sales and service occupations, except management}
#'       \item{\code{8} Trades, transport and equipment operators and related occupations, except management}
#'       \item{\code{9} Natural resources, agriculture and related production occupations, except management}
#'       \item{\code{10} Occupations in manufacturing and utilities, except management}
#'     }}
#'   \item{\code{NOC_43} \code{<fct>} Occupation at main job \code{for} Currently employed or worked within the past 12 months}{
#'     \describe{
#'       \item{\code{1} Legislative and senior management occupations}
#'       \item{\code{2} Specialized middle management occupations}
#'       \item{\code{3} Middle management occupations in retail and wholesale trade and customer services}
#'       \item{\code{4} Middle management occupations in trades, transportation, production and utilities}
#'       \item{\code{5} Professional occupations in finance}
#'       \item{\code{6} Professional occupations in business}
#'       \item{\code{7} Administrative and financial supervisors and specialized administrative occupations}
#'       \item{\code{8} Administrative occupations and transportation logistics occupations}
#'       \item{\code{9} Administrative and financial support and supply chain logistics occupations}
#'       \item{\code{10} Professional occupations in natural sciences}
#'       \item{\code{11} Professional occupations in applied sciences (except engineering)}
#'       \item{\code{12} Professional occupations in engineering}
#'       \item{\code{13} Technical occupations related to natural and applied sciences}
#'       \item{\code{14} Health treating and consultation services professionals}
#'       \item{\code{15} Therapy and assessment professionals}
#'       \item{\code{16} Nursing and allied health professionals}
#'       \item{\code{17} Technical occupations in health}
#'       \item{\code{18} Assisting occupations in support of health services}
#'       \item{\code{19} Professional occupations in law}
#'       \item{\code{20} Professional occupations in education services}
#'       \item{\code{21} Professional occupations in social and community services}
#'       \item{\code{22} Professional occupations in government services}
#'       \item{\code{23} Occupations in front-line public protection services}
#'       \item{\code{24} Paraprofessional occupations in legal, social, community and education services}
#'       \item{\code{25} Assisting occupations in education and in legal and public protection}
#'       \item{\code{26} Care providers and public protection support occupations and student monitors, crossing guards and related occupations}
#'       \item{\code{27} Professional occupations in art and culture}
#'       \item{\code{28} Technical occupations in art, culture and sport}
#'       \item{\code{29} Occupations in art, culture and sport}
#'       \item{\code{30} Support occupations in art, culture and sport}
#'       \item{\code{31} Retail sales and service supervisors and specialized occupations in sales and services}
#'       \item{\code{32} Occupations in sales and services}
#'       \item{\code{33} Sales and service representatives and other customer and personal services occupations}
#'       \item{\code{34} Sales and service support occupations}
#'       \item{\code{35} Technical trades and transportation officers and controllers}
#'       \item{\code{36} General trades}
#'       \item{\code{37} Mail and message distribution, other transport equipment operators and related maintenance workers}
#'       \item{\code{38} Helpers and labourers and other transport drivers, operators and labourers}
#'       \item{\code{39} Supervisors and occupations in natural resources, agriculture and related production}
#'       \item{\code{40} Workers and labourers in natural resources, agriculture and related production}
#'       \item{\code{41} Supervisors, central control and process operators in processing, manufacturing and utilities and aircraft assemblers and inspectors}
#'       \item{\code{42} Machine operators, assemblers and inspectors in processing, manufacturing and printing}
#'       \item{\code{43} Labourers in processing, manufacturing and utilities}
#'     }}
#'   \item{\code{YABSENT} \code{<fct>} Reason of absence, full week \code{for} Currently employed, absent from work}{
#'     \describe{
#'       \item{\code{0} Other reasons}
#'       \item{\code{1} Own illness or disability}
#'       \item{\code{2} Personal or family responsibilities}
#'       \item{\code{3} Vacation}
#'     }}
#'   \item{\code{WKSAWAY} \code{<num>} Number of weeks absent from work [1, 99] \code{for} Currently employed, absent from work}
#'   \item{\code{PAYAWAY} \code{<fct>} Paid for time off, full-week absence only \code{for} Employees and self-employed - incorporated only}{
#'     \describe{
#'       \item{\code{1} Yes}
#'       \item{\code{2} No}
#'     }}
#'   \item{\code{UHRSMAIN} \code{<num>} Usual hours worked per week at main job [0.1, 99] \code{for} Currently employed only}
#'   \item{\code{AHRSMAIN} \code{<num>} Actual hours worked per week at main job [0, 99] \code{for} Currently employed only}
#'   \item{\code{FTPTMAIN} \code{<fct>} Full- or part-time status at main or only job \code{for} Currently employed only}{
#'     \describe{
#'       \item{\code{1} Full-time}
#'       \item{\code{2} Part-time}
#'     }}
#'   \item{\code{UTOTHRS} \code{<num>} Usual hours worked per week at all jobs [0.1, 99] \code{for} Currently employed only}
#'   \item{\code{ATOTHRS} \code{<num>} Actual hours worked per week at all jobs [0, 99] \code{for} Currently employed only}
#'   \item{\code{HRSAWAY} \code{<num>} Hours away from work, part-week absence only [0, 99] \code{for} Employees at work only}
#'   \item{\code{YAWAY} \code{<fct>} Reason for part-week absence \code{for} Employees at work only}{
#'     \describe{
#'       \item{\code{0} Other reasons}
#'       \item{\code{1} Own illness or disability}
#'       \item{\code{2} Personal or family responsibilities}
#'       \item{\code{3} Vacation or civic holiday}
#'       \item{\code{4} Working short-time}
#'     }}
#'   \item{\code{PAIDOT} \code{<num>} Paid overtime hours in reference week [0, 990] \code{for} Employees at work only}
#'   \item{\code{UNPAIDOT} \code{<num>} Unpaid overtime hours in reference week [0, 990] \code{for} Employees at work only}
#'   \item{\code{XTRAHRS} \code{<num>} Number of overtime or extra hours worked [0, 99] \code{for} Employees at work only}
#'   \item{\code{WHYPT} \code{<fct>} Reason for part-time work \code{for} Currently employed, part-time usual work hours at their main or only job was below 30 per week}{
#'     \describe{
#'       \item{\code{0} Other reasons}
#'       \item{\code{1} Own illness or disability}
#'       \item{\code{2} Caring for children}
#'       \item{\code{3} Other personal or family responsibilities}
#'       \item{\code{4} Going to school}
#'       \item{\code{5} Personal preference}
#'       \item{\code{6} Business conditions or could not find full-time work, looked for full-time work in last month}
#'       \item{\code{7} Business conditions or could not find full-time work, did not look for full-time work in last month}
#'     }}
#'   \item{\code{TENURE} \code{<num>} Job tenure with current employer [1, 240] \code{for} Currently employed only}
#'   \item{\code{PREVTEN} \code{<num>} Job tenure with previous employer [1, 240] \code{for} Not currently employed but worked in the past 12 months}
#'   \item{\code{HRLYEARN} \code{<num>} Usual hourly wages [3.69, 176.28] \code{for} Currently employed, employees}
#'   \item{\code{UNION} \code{<fct>} Union status \code{for} Currently employed, employees}{
#'     \describe{
#'       \item{\code{1} Union member}
#'       \item{\code{2} Not a member but covered by a union contract or collective agreement}
#'       \item{\code{3} Non-unionized}
#'     }}
#'   \item{\code{PERMTEMP} \code{<fct>} Job permanency \code{for} Currently employed, employees}{
#'     \describe{
#'       \item{\code{1} Permanent}
#'       \item{\code{2} Temporary, seasonal job}
#'       \item{\code{3} Temporary, term or contract job}
#'       \item{\code{4} Temporary, casual or other temporary jobs}
#'     }}
#'   \item{\code{ESTSIZE} \code{<fct>} Establishment size \code{for} Currently employed, employees}{
#'     \describe{
#'       \item{\code{1} Less than 20 employees}
#'       \item{\code{2} 20 to 99 employees}
#'       \item{\code{3} 100 to 500 employees}
#'       \item{\code{4} More than 500 employees}
#'     }}
#'   \item{\code{FIRMSIZE} \code{<fct>} Firm size \code{for} Currently employed, employees}{
#'     \describe{
#'       \item{\code{1} Less than 20 employees}
#'       \item{\code{2} 20 to 99 employees}
#'       \item{\code{3} 100 to 500 employees}
#'       \item{\code{4} More than 500 employees}
#'     }}
#'   \item{\code{DURUNEMP} \code{<num>} Duration of unemployment [1, 99] \code{for} Unemployed temporary layoffs and job searchers only}
#'   \item{\code{FLOWUNEM} \code{<fct>} Flows into unemployment \code{for} Currently unemployed}{
#'     \describe{
#'       \item{\code{1} Job losers, temporary layoff}
#'       \item{\code{2} Job losers, permanent layoff}
#'       \item{\code{3} Job leavers}
#'       \item{\code{4} Job leavers/losers (status unknown), worked more than 1 year ago}
#'       \item{\code{5} New entrants}
#'       \item{\code{6} Re-entrants, worked 1 year ago or less}
#'       \item{\code{7} Re-entrants, worked more than 1 year ago}
#'       \item{\code{8} Future starts}
#'     }}
#'   \item{\code{UNEMFTPT} \code{<fct>} Job seekers by type of work sought and temporary layoffs by work status of last job \code{for} Currently unemployed}{
#'     \describe{
#'       \item{\code{1} Full-time}
#'       \item{\code{2} Part-time}
#'       \item{\code{3} Future starts}
#'     }}
#'   \item{\code{WHYLEFTO} \code{<fct>} Reason for leaving job during previous year \code{for} Not currently employed but worked within the previous twelve months}{
#'     \describe{
#'       \item{\code{0} Job leavers, other reasons}
#'       \item{\code{1} Job leavers, own illness or disability}
#'       \item{\code{2} Job leavers, personal or family responsibilities}
#'       \item{\code{3} Job leavers, going to school}
#'       \item{\code{4} Job losers, laid off}
#'       \item{\code{5} Job leavers, retired}
#'     }}
#'   \item{\code{WHYLEFTN} \code{<fct>} Reason for leaving job during previous year \code{for} Not currently employed but worked within the previous twelve months}{
#'     \describe{
#'       \item{\code{0} Job leavers, other reasons}
#'       \item{\code{1} Job leavers, own illness or disability}
#'       \item{\code{2} Job leavers, caring for children}
#'       \item{\code{3} Job leavers, pregnancy}
#'       \item{\code{4} Job leavers, personal or family responsibilities}
#'       \item{\code{5} Job leavers, going to school}
#'       \item{\code{6} Job leavers, dissatisfied}
#'       \item{\code{7} Job leavers, retired}
#'       \item{\code{8} Job leavers, business sold or closed down (self-employed)}
#'       \item{\code{9} Job losers, end of seasonal job (employee)}
#'       \item{\code{10} Job losers, end of temporary or casual (employee)}
#'       \item{\code{11} Job losers, company moved or out of business (employee)}
#'       \item{\code{12} Job losers, business conditions (employee)}
#'       \item{\code{13} Job losers, dismissal or other reasons}
#'     }}
#'   \item{\code{DURJLESS} \code{<num>} Duration of joblessness [1, 240] \code{for} Not currently employed but worked at some time in the past}
#'   \item{\code{AVAILABL} \code{<fct>} Availability during the reference week \code{for} Temporary layoffs, job searchers and future starts, and those who wanted work but did not look because believes no suitable work available}{
#'     \describe{
#'       \item{\code{1} Not available}
#'       \item{\code{2} Yes, available}
#'     }}
#'   \item{\code{LKPUBAG} \code{<num>} Unemployed, used public employment agency [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{LKEMPLOY} \code{<num>} Unemployed, checked with employers directly [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{LKRELS} \code{<num>} Unemployed, checked with friends or relatives [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{LKATADS} \code{<num>} Unemployed, looked at job ads [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{LKANSADS} \code{<num>} Unemployed, placed or answered ads [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{LKOTHERN} \code{<num>} Unemployed, other methods [1, 1] \code{for} Currently unemployed, job searchers}
#'   \item{\code{PRIORACT} \code{<fct>} Main activity before started looking for work \code{for} Currently unemployed, job searchers}{
#'     \describe{
#'       \item{\code{0} Other}
#'       \item{\code{1} Working}
#'       \item{\code{2} Managing a home}
#'       \item{\code{3} Going to school}
#'     }}
#'   \item{\code{YNOLOOK} \code{<fct>} Reason for not looking for work during the reference week \code{for} Persons not in the labour force who say they wanted a job in the reference week}{
#'     \describe{
#'       \item{\code{0} Wanted work, reason - other}
#'       \item{\code{1} Wanted work, reason - own illness or disability}
#'       \item{\code{2} Wanted work, reason - caring for children}
#'       \item{\code{3} Wanted work, reason - other personal or family responsibilities}
#'       \item{\code{4} Wanted work, reason - school}
#'       \item{\code{5} Wanted work, reason - awaiting recall or reply}
#'       \item{\code{6} Wanted work, reason - discouraged}
#'     }}
#'   \item{\code{TLOLOOK} \code{<fct>} Temporary layoff, looked for work during the last four weeks \code{for} Currently unemployed, temporary layoffs}{
#'     \describe{
#'       \item{\code{1} Yes}
#'       \item{\code{2} No}
#'     }}
#'   \item{\code{SCHOOLN} \code{<fct>} Current student status \code{for} Respondents aged 15 to 64 years}{
#'     \describe{
#'       \item{\code{1} Non-student}
#'       \item{\code{2} Full-time student}
#'       \item{\code{3} Part-time student}
#'     }}
#'   \item{\code{EFAMTYPE} \code{<fct>} Type of economic family \code{for} All respondents}{
#'     \describe{
#'       \item{\code{1} Person not in an economic family}
#'       \item{\code{2} Dual-earner couple, no children or none under 25}
#'       \item{\code{3} Dual-earner couple, youngest child 0 to 17}
#'       \item{\code{4} Dual-earner couple, youngest child 18 to 24}
#'       \item{\code{5} Single-earner couple, male employed, no children or none under 25}
#'       \item{\code{6} Single-earner couple, male employed, youngest child 0 to 17}
#'       \item{\code{7} Single-earner couple, male employed, youngest child 18 to 24}
#'       \item{\code{8} Single-earner couple, female employed, no children or none under 25}
#'       \item{\code{9} Single-earner couple, female employed, youngest child 0 to 17}
#'       \item{\code{10} Single-earner couple, female employed, youngest child 18 to 24}
#'       \item{\code{11} Non-earner couple, no children or none under 25}
#'       \item{\code{12} Non-earner couple, youngest child 0 to 17}
#'       \item{\code{13} Non-earner couple, youngest child 18 to 24}
#'       \item{\code{14} Lone-parent family, parent employed, youngest child 0 to 17}
#'       \item{\code{15} Lone-parent family, parent employed, youngest child 18 to 24}
#'       \item{\code{16} Lone-parent family, parent not employed, youngest child 0 to 17}
#'       \item{\code{17} Lone-parent family, parent not employed, youngest child 18 to 24}
#'       \item{\code{18} Other families}
#'     }}
#'   \item{\code{AGYOWNK} \code{<fct>} Age of youngest child \code{for} Parents only}{
#'     \describe{
#'       \item{\code{1} Youngest child less than 6 years}
#'       \item{\code{2} Youngest child 6 to 12 years}
#'       \item{\code{3} Youngest child 13 to 17 years}
#'       \item{\code{4} Youngest child 18 to 24 years}
#'     }}
#'   \item{\code{FINALWT} \code{<num>} Standard final weight [1, 7207] \code{for} All respondents}
#' }
NULL

#' @rdname lfs_pumf
#' @name lfs_pumf_2018__labelled
"lfs_pumf_2018__labelled"

#' @rdname lfs_pumf
#' @name lfs_pumf_2019__labelled
"lfs_pumf_2019__labelled"

#' @rdname lfs_pumf
#' @name lfs_pumf_2020__labelled
"lfs_pumf_2020__labelled"

#' @rdname lfs_pumf
#' @name lfs_pumf_2021__labelled
"lfs_pumf_2021__labelled"

#' @rdname lfs_pumf
#' @name lfs_pumf_2022__labelled
"lfs_pumf_2022__labelled"

#' @rdname lfs_pumf
#' @name lfs_pumf_2018__raw
"lfs_pumf_2018__raw"

#' @rdname lfs_pumf
#' @name lfs_pumf_2019__raw
"lfs_pumf_2019__raw"

#' @rdname lfs_pumf
#' @name lfs_pumf_2020__raw
"lfs_pumf_2020__raw"

#' @rdname lfs_pumf
#' @name lfs_pumf_2021__raw
"lfs_pumf_2021__raw"

#' @rdname lfs_pumf
#' @name lfs_pumf_2022__raw
"lfs_pumf_2022__raw"

#' @rdname lfs_pumf
#' @name get_lfs_pumf
#' @description Get labelled or raw LFS PUMF data for a given year and (optionally) month.
#' @param year :integer The year of the data to retrieve.
#' @param month :vector<integer> [1, 12] The month(s) of data to retrieve.
#' @param labelled :logical Whether to retrieve labelled or raw data.
#' @export
get_lfs_pumf <- function(
    year,
    month = 1:12,
    labelled = TRUE) {
    d <- eval(parse(
        text = glue::glue(
            "lfs_pumf_{year}__{ifelse(labelled, 'labelled', 'raw')}"
        )
    ))

    if (!labelled) {
        d$records <- d$records |>
            dplyr::filter(SURVMNTH %in% month)
    } else {
        d <- d |>
            dplyr::filter(as.integer(SURVMNTH) %in% month)
    }

    d
}
