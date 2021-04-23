" vim:ts=58:

" Name:         correction.vim
" Author:       Joel D. Elkins <joel@elkins.com>
" Description:  This contains many of the MS Word 2007 autocorrections, which
"               I extracted and converted to Abolish commands. See
"               https://github.com/tpope/vim-abolish (or :h abolish) for more
"               info on Tim Pope's vim-abolish plugin.

" ensure abolish is loaded first. Note there should be no error (see :h :runtime)
runtime ALL plugin/abolish.vim

if (exists(":Abolish") != 2) || exists("g:loaded_correction")
  finish
endif
let g:loaded_correction = 1

let s:filetypes = get(g:, 'correction_filetypes', ['text', 'markdown', 'gitcommit', 'plaintex', 'tex', 'latex', 'rst', 'asciidoc', 'textile', 'pandoc'])

augroup correction_filetypes
  au!
  exe "au Filetype " . join(s:filetypes, ',') . " CorrectionEnable"
augroup END

command! CorrectionEnable call CorrectionEnable()

function! CorrectionEnable()
  Abolish -buffer abbout	about 
  Abolish -buffer abotu	about 
  Abolish -buffer abouta	about a 
  Abolish -buffer aboutit	about it 
  Abolish -buffer aboutthe	about the 
  Abolish -buffer abscence	absence 
  Abolish -buffer accesories	accessories 
  Abolish -buffer accidant	accident 
  Abolish -buffer accomodate	accommodate 
  Abolish -buffer accordingto	according to 
  Abolish -buffer accross	across 
  Abolish -buffer acheiv{e,ed,ing}	achiev{}
  Abolish -buffer acn	can 
  Abolish -buffer acom{,m}{o,a}date	accommodate 
  Abolish -buffer actualyl	actually 
  Abolish -buffer additinal	additional 
  Abolish -buffer addtional	additional 
  Abolish -buffer adequit{,e}	adequate 
  Abolish -buffer adn	and 
  Abolish -buffer advanage	advantage 
  Abolish -buffer affraid	afraid 
  Abolish -buffer afterthe	after the 
  Abolish -buffer againstt he	against the 
  Abolish -buffer aganist	against 
  Abolish -buffer aggresive	aggressive 
  Abolish -buffer agian	again 
  Abolish -buffer agreem{,ee}n{,e}t	agreement
  Abolish -buffer agreem{,ee}n{,e}ts	agreements
  Abolish -buffer agressive	aggressive 
  Abolish -buffer ahppen	happen 
  Abolish -buffer ahve	have 
  Abolish -buffer allwasy	always 
  Abolish -buffer allwyas	always 
  Abolish -buffer alm{ots,sot}	almost 
  Abolish -buffer alomst	almost 
  Abolish -buffer alot	a lot 
  Abolish -buffer alr{aedy,eayd,eday}	already 
  Abolish -buffer alwasy	always 
  Abolish -buffer alwats	always 
  Abolish -buffer alway	always 
  Abolish -buffer alwyas	always 
  Abolish -buffer amde	made 
  Abolish -buffer Ameria	America 
  Abolish -buffer amke	make 
  Abolish -buffer amkes	makes 
  Abolish -buffer anbd	and 
  Abolish -buffer andone	and one 
  "Abolish -buffer andt he	and the " not a legal abbreviation in vim
  Abolish -buffer andt{eh,he}	and the 
  Abolish -buffer anothe	another 
  Abolish -buffer anual	annual 
  Abolish -buffer appar{ant,rent}	apparent 
  Abolish -buffer appearence	appearance 
  Abolish -buffer appeares	appears 
  Abolish -buffer applicaiton{,s}	application{}
  Abolish -buffer applyed	applied 
  Abolish -buffer appointiment	appointment 
  Abolish -buffer approrp{r,}iate	appropriate 
  Abolish -buffer aquisition{,s}	acquisition{}
  "Abolish -buffer aren;t	aren’t " not legal ab
  Abolish -buffer arguement	argument 
  Abolish -buffer arguements	arguments 
  " Abolish -buffer arn't	aren’t  " not legal ab
  Abolish -buffer arond	around 
  Abolish -buffer artic{a,e}l	article 
  Abolish -buffer asdvertising	advertising 
  "Abolish -buffer askt he	ask the 
  Abolish -buffer assistent	assistant 
  Abolish -buffer asthe	as the 
  Abolish -buffer atention	attention 
  Abolish -buffer atmospher	atmosphere 
  Abolish -buffer attentioin	attention 
  Abolish -buffer atthe	at the 
  Abolish -buffer aud{ei,ia}nce	audience 
  Abolish -buffer availalbe	available 
  Abolish -buffer awya	away 
  Abolish -buffer aywa	away 
  Abolish -buffer bakc	back 
  Abolish -buffer bal{e,la}nce	balance 
  Abolish -buffer baout	about 
  Abolish -buffer bcak	back 
  Abolish -buffer be{cuse,cuase,acuse,casue,caus}	because 
  Abolish -buffer because{a,of,the,you}	because {}
  Abolish -buffer becom{e,m}ing	becoming 
  Abolish -buffer befoer	before 
  Abolish -buffer beg{gin,in,inin}ing	beginning 
  Abolish -buffer beleiev	believe 
  Abolish -buffer beleieve	believe 
  Abolish -buffer belei{ve,f,ve,ved,ves}	belie{}
  Abolish -buffer benifit{,s}	benefit{}
  Abolish -buffer betwen	between 
  Abolish -buffer beutiful	beautiful 
  Abolish -buffer blase	blasé 
  Abolish -buffer boxs	boxes 
  Abolish -buffer brodcast	broadcast 
  Abolish -buffer butthe	but the 
  Abolish -buffer bve	be 
  "Abolish -buffer byt he	by the 
  Abolish -buffer cafe	café 
  Abolish -buffer caharcter	character 
  Abolish -buffer cal{cul,u}lated	calculated 
  "Abolish -buffer can't of been	can’t have been 
  "Abolish -buffer can;t	can’t 
  Abolish -buffer candidtae{,s}	candidate{}
  Abolish -buffer cat{a,egi}gor{y,ies}	cat{e}gor{}
  Abolish -buffer certian	certain 
  Abolish -buffer challange{,s}	challenge{}
  Abolish -buffer chaneg{,s}	change{}
  Abolish -buffer chang{able,eing,ng}	chang{eable,ing,ing}
  Abolish -buffer char{a,e}c{hter,tor,ter}{,s}	char{a}c{ter,ter,ter}{} 
  Abolish -buffer cheif{,s}	chief{}
  Abolish -buffer chekc{,s}	check{}
  Abolish -buffer chnag{e,ing,er,es}	chang{}
  Abolish -buffer cieling	ceiling 
  Abolish -buffer circut	circuit 
  Abolish -buffer claer{,ed,ly}	clear{}
  Abolish -buffer cliant	client 
  Abolish -buffer cliche	cliché 
  Abolish -buffer cna	can 
  Abolish -buffer colection	collection 
  Abolish -buffer coma{,p}n{y,ies}	com{p}an{}
  Abolish -buffer combintation{,s}	combination{}
  Abolish -buffer comit{ed,ee,tee,tment,tments}	commit{ted,tee,tee,ment,ments}
  Abolish -buffer committment{,s}	commitment{}
  Abolish -buffer commadn	command 
  Abolish -buffer comming	coming 
  Abolish -buffer commit{ee,te,ty}	committee 
  Abolish -buffer comntain{,s}	contain{}
  Abolish -buffer compair	compare 
  "Abolish -buffer company;s	company’s 
  Abolish -buffer compleat{ed,ly,ness}	complet{ed,ely,eness}
  Abolish -buffer complet{ly,ness}	complete{}
  Abolish -buffer composate	composite 
  Abolish -buffer comtain{,s}	contain{}
  Abolish -buffer comunicat{e,es,ion,ions}	communicat{}
  Abolish -buffer comunit{y,ies}	communit{}
  Abolish -buffer condolances	condolences 
  Abolish -buffer conect{,s,ed,ion,ions}	connect{}
  Abolish -buffer conferance	conference 
  Abolish -buffer confirmmation	confirmation 
  Abolish -buffer considerit{,e}	considerate
  Abolish -buffer consonent	consonant 
  Abolish -buffer conspiricy	conspiracy 
  Abolish -buffer consultent{,s}	consultant{}
  Abolish -buffer convertable{,s}	convertible{}
  Abolish -buffer coop{a,o}rate	cooperate 
  Abolish -buffer corproation{,s}	corporation{}
  Abolish -buffer corruptable	corruptible 
  Abolish -buffer cotten	cotton 
  Abolish -buffer coudl	could 
  "Abolish -buffer coudln't	couldn’t 
  "Abolish -buffer coudn't	couldn’t 
  "Abolish -buffer could of been	could have been 
  "Abolish -buffer could of had	could have had 
  "Abolish -buffer couldn;t	couldn’t 
  Abolish -buffer couldnt	couldn’t
  Abolish -buffer couldthe	could the 
  Abolish -buffer cpoy	copy 
  Abolish -buffer creme	crème 
  Abolish -buffer ctaegory	category 
  Abolish -buffer cu{sot,tso}mer{,s}	cu{sto}mer{}
  Abolish -buffer cxan	can
  Abolish -buffer danceing	dancing
  Abolish -buffer dcument{,s,ation}	document{}
  Abolish -buffer deatils	details 
  Abolish -buffer decison{,s}	decision{}
  Abolish -buffer decor	décor 
  Abolish -buffer defendent{,s}	defendant{}
  Abolish -buffer definately	definitely 
  "Abolish -buffer deja vu	déjà vu 
  Abolish -buffer deptartment	department 
  Abolish -buffer desi{c,s}ion{,s}	deci{s}ion{}
  Abolish -buffer detente	détente 
  Abolish -buffer develeoprs	developers 
  Abolish -buffer devel{l,e}op{e,}{,ed,er,ers,ing,ment,ments,s}	deve{l}{o}p{}
  Abolish -buffer developor{,s}	developer{}
  Abolish -buffer develpment{,s}	development{}
  Abolish -buffer diaplay	display 
  Abolish -buffer did{i,}nt	didn’t 
  "Abolish -buffer didn;t	didn’t 
  Abolish -buffer didnot	did not 
  Abolish -buffer dif{ef,fe}r{e,a}n{t,ce,ces}	dif{fe}r{e}n{}
  Abolish -buffer differemt	different 
  Abolish -buffer diff{er,re}nt	different 
  Abolish -buffer directer{,s}	director{}
  Abolish -buffer directiosn	direction 
  Abolish -buffer disatisfied	dissatisfied 
  Abolish -buffer discoverd	discovered 
  Abolish -buffer disign	design 
  Abolish -buffer dispaly	display 
  Abolish -buffer dissonent	dissonant 
  Abolish -buffer distribusion{,s}	distribution{}
  Abolish -buffer divsion	division 
  "Abolish -buffer do'nt	don’t 
  Abolish -buffer docu{ement,emnt,metn,mnet}{,s}	docu{ment}{}
  "Abolish -buffer doe snot	does not 
  "Abolish -buffer doens't	doesn’t 
  Abolish -buffer doese	does 
  "Abolish -buffer doesn;t	doesn’t 
  Abolish -buffer doesnt	doesn’t 
  Abolish -buffer do{nig,ign,img,ind}	doing 
  Abolish -buffer dollers	dollars 
  "Abolish -buffer don't no	don’t know 
  "Abolish -buffer don;t	don’t 
  Abolish -buffer dont	don’t 
  "Abolish -buffer dosn't	doesn’t 
  Abolish -buffer driveing	driving 
  Abolish -buffer drnik	drink 
  Abolish -buffer eclair	éclair 
  Abolish -buffer efel	feel 
  Abolish -buffer effecient	efficient 
  Abolish -buffer efort{,s}	effort{}
  Abolish -buffer ehr	her 
  Abolish -buffer eligable	eligible 
  Abolish -buffer embarass{,ing,ed,es}	embarrass{}
  Abolish -buffer emigre	émigré 
  Abolish -buffer enought	enough 
  Abolish -buffer entree	entrée 
  Abolish -buffer equippment	equipment 
  Abolish -buffer equivalant	equivalent 
  Abolish -buffer esle	else 
  Abolish -buffer espe{cally,cialyl,sially}	especially 
  Abolish -buffer excellant	excellent 
  Abolish -buffer excercise	exercise 
  Abolish -buffer exchagne	exchange 
  Abolish -buffer exchagnes	exchanges 
  Abolish -buffer excitment	excitement 
  Abolish -buffer exhcange	exchange 
  Abolish -buffer exhcanges	exchanges 
  Abolish -buffer experi{ance,enc}{,es,ed,ing}	experi{enc}{e,es,ed,ing}
  Abolish -buffer exprience{,d}	experience{}
  Abolish -buffer eyt	yet 
  Abolish -buffer facade	façade 
  Abolish -buffer faeture{,s}	feature{}
  Abolish -buffer fam{,m}il{air,ar,liar,iar}{,ize,ized,ized,izing}	fa{m}il{iar}{}
  Abolish -buffer feild{,s}	field{}
  Abolish -buffer fianlly	finally 
  Abolish -buffer finalyl	finally 
  Abolish -buffer fidn	find 
  Abolish -buffer firends	friends 
  Abolish -buffer firts	first 
  Abolish -buffer follwo{,ing}	follow{}
  Abolish -buffer fora	for a 
  Abolish -buffer foriegn	foreign 
  Abolish -buffer forthe	for the 
  Abolish -buffer forwrd{,s,ing,er,most}	forward{}
  Abolish -buffer foudn	found 
  Abolish -buffer foward{,s,ing,er}	forward{}
  Abolish -buffer freind{,ly,s}	friend{} 
  Abolish -buffer frmo	from 
  "Abolish -buffer fromt he	from the 
  Abolish -buffer fromthe	from the 
  Abolish -buffer furneral	funeral 
  Abolish -buffer fwe	few 
  Abolish -buffer garantee	guarantee 
  Abolish -buffer gaurd	guard 
  Abolish -buffer gemeral	general 
  Abolish -buffer gerat	great 
  Abolish -buffer geting	getting 
  Abolish -buffer gettin	getting 
  Abolish -buffer gievn	given 
  Abolish -buffer giveing	giving 
  Abolish -buffer gloabl	global 
  Abolish -buffer goign	going 
  Abolish -buffer gonig	going 
  Abolish -buffer gove{n,r}ment	government 
  Abolish -buffer gruop{,s}	group 
  Abolish -buffer grwo	grow 
  Abolish -buffer guidlines	guidelines 
  Abolish -buffer hadbeen	had been 
  "Abolish -buffer hadn;t	hadn’t 
  Abolish -buffer haev	have 
  Abolish -buffer hapen{,ed,ing,s}	happen{}
  Abolish -buffer happend	happened 
  Abolish -buffer hasbeen	has been 
  "Abolish -buffer hasn;t	hasn’t 
  Abolish -buffer hasnt	hasn’t 
  Abolish -buffer havebeen	have been 
  Abolish -buffer haveing	having 
  "Abolish -buffer haven;t	haven’t 
  Abolish -buffer hda	had 
  "Abolish -buffer he;ll	he’ll 
  Abolish -buffer hearign	hearing 
  Abolish -buffer heigth	height
  Abolish -buffer helpfull	helpful 
  Abolish -buffer herat	heart 
  "Abolish -buffer here;s	here’s 
  Abolish -buffer hesaid	he said 
  Abolish -buffer hewas	he was 
  Abolish -buffer hge	he 
  Abolish -buffer hismelf	himself 
  Abolish -buffer hlep	help 
  Abolish -buffer hsa	has 
  Abolish -buffer hsi	his 
  Abolish -buffer hte	the 
  Abolish -buffer htere	there 
  Abolish -buffer htese	these 
  Abolish -buffer htey	they 
  Abolish -buffer hting	thing 
  Abolish -buffer htink	think 
  Abolish -buffer htis	this 
  "Abolish -buffer htp:	http: 
  "Abolish -buffer http:\\	http:// 
  Abolish -buffer httpL	http: 
  Abolish -buffer hva{e,ing}	hav{} 
  Abolish -buffer hwich	which 
  "Abolish -buffer i	I 
  "Abolish -buffer i snot	is not 
  "Abolish -buffer I"m	I’m 
  "Abolish -buffer I;d	I’d 
  "Abolish -buffer I;ll	I’ll 
  Abolish -buffer idae	idea 
  Abolish -buffer idaes	ideas 
  Abolish -buffer identofy	identify 
  Abolish -buffer ihs	his 
  "Abolish -buffer iits the	it’s the 
  Abolish -buffer imediat{e,ly}	immediate{,ly}
  Abolish -buffer immediatly	immediately 
  Abolish -buffer import{en,na}t{,ly}	import{an}t{}
  Abolish -buffer impossable	impossible 
  Abolish -buffer improv{em,me}nt{,s}	improve{me}nt{}
  Abolish -buffer includ	include 
  Abolish -buffer indecate	indicate 
  Abolish -buffer indenpenden{ce,t}	independen{}
  Abolish -buffer indepedent	independent 
  Abolish -buffer independan{ce,t}	independen{}
  Abolish -buffer influance	influence 
  Abolish -buffer infomation	information 
  Abolish -buffer informatoin	information 
  Abolish -buffer inital	initial 
  Abolish -buffer instaleld	installed 
  Abolish -buffer insted	instead 
  Abolish -buffer insurence	insurance 
  "Abolish -buffer int he	in the 
  Abolish -buffer inteh	in the 
  Abolish -buffer interum	interim 
  Abolish -buffer inthe	in the 
  Abolish -buffer inwhich	in which 
  "Abolish -buffer isn;t	isn’t 
  Abolish -buffer isthe	is the 
  "Abolish -buffer it snot	it’s not 
  "Abolish -buffer it' snot	it’s not 
  "Abolish -buffer it;ll	it’ll 
  "Abolish -buffer it;s	it’s 
  Abolish -buffer itis	it is 
  Abolish -buffer ititial	initial 
  Abolish -buffer itnerest{,ed,int,s}	interest{}
  "Abolish -buffer its a	it’s a 
  "Abolish -buffer its the	it’s the 
  Abolish -buffer itwas	it was 
  Abolish -buffer iwll	will 
  Abolish -buffer iwth	with 
  Abolish -buffer jsut	just 
  Abolish -buffer jugment	judgment 
  Abolish -buffer knowl{d,e}ge	knowledge 
  Abolish -buffer k{nwo,onw}{,n,s}	k{now}{}
  Abolish -buffer labratory	laboratory 
  Abolish -buffer lastyear	last year 
  Abolish -buffer learnign	learning 
  Abolish -buffer lenght	length 
  "Abolish -buffer let's him	lets him 
  "Abolish -buffer let's it	lets it 
  "Abolish -buffer let;s	let’s 
  Abolish -buffer levle	level 
  Abolish -buffer lib{ary,arry,rery}	library 
  Abolish -buffer liek{,d}	like{}
  Abolish -buffer lieutenent	lieutenant 
  Abolish -buffer liev	live 
  Abolish -buffer likly	likely 
  Abolish -buffer lisense	license 
  Abolish -buffer littel	little 
  Abolish -buffer litttle	little 
  Abolish -buffer liuke	like 
  Abolish -buffer liveing	living 
  Abolish -buffer loev	love 
  Abolish -buffer lonly	lonely 
  Abolish -buffer lookign	looking 
  Abolish -buffer maintenence	maintenance 
  Abolish -buffer makeing	making 
  Abolish -buffer managment	management 
  Abolish -buffer mantain	maintain 
  Abolish -buffer marraige	marriage 
  "Abolish -buffer may of been	may have been 
  "Abolish -buffer may of had	may have had 
  Abolish -buffer memeber	member 
  Abolish -buffer merchent	merchant 
  Abolish -buffer mesage{,s}	message{}
  "Abolish -buffer might of been	might have been 
  "Abolish -buffer might of had	might have had 
  Abolish -buffer mispell{,ing,ings,ed,s}	misspell{}
  Abolish -buffer mka{e,es,ing}	mak{}
  Abolish -buffer moeny	money 
  Abolish -buffer morgage	mortgage 
  Abolish -buffer mroe	more 
  "Abolish -buffer must of been	must have been 
  "Abolish -buffer must of had	must have had 
  Abolish -buffer mysefl	myself 
  Abolish -buffer myu	my 
  Abolish -buffer naive	naïve 
  Abolish -buffer nec{ass,cess,es}ar{y,ily}	nec{ess}ar{}
  Abolish -buffer negotiaing	negotiating 
  Abolish -buffer nkow	know 
  Abolish -buffer nothign	nothing 
  Abolish -buffer nver	never 
  Abolish -buffer nw{o,e}	n{}w 
  Abolish -buffer obediant	obedient 
  Abolish -buffer ocasion	occasion 
  Abolish -buffer occassion	occasion 
  Abolish -buffer oc{,c}ur{,ed,ence,rance}	oc{c}urr{,ed,ence,ence}
  Abolish -buffer oeprator	operator 
  Abolish -buffer ofits	of its 
  "Abolish -buffer oft he	of the 
  Abolish -buffer ofthe	of the 
  Abolish -buffer oging	going 
  Abolish -buffer ohter	other 
  Abolish -buffer omre	more 
  Abolish -buffer oneof	one of 
  Abolish -buffer onepoint	one point 
  "Abolish -buffer ont he	on the 
  Abolish -buffer onthe	on the 
  Abolish -buffer onyl	only 
  Abolish -buffer oppasite	opposite 
  Abolish -buffer opperation	operation 
  Abolish -buffer oppos{ate,it}	opposite 
  Abolish -buffer opposible	opposable 
  Abolish -buffer opp{o,er}tunit{y,ies}	opp{or}tunit{}
  Abolish -buffer orginiz{e,ed,ation}	organiz{}
  Abolish -buffer otehr	other 
  Abolish -buffer otu	out 
  Abolish -buffer outof	out of 
  Abolish -buffer overthe	over the 
  Abolish -buffer owrk	work 
  Abolish -buffer owuld	would 
  Abolish -buffer oxident	oxidant 
  Abolish -buffer papaer	paper 
  Abolish -buffer parliment	parliament 
  Abolish -buffer partof	part of 
  Abolish -buffer paymetn	payment 
  Abolish -buffer paymetns	payments 
  Abolish -buffer pciture	picture 
  Abolish -buffer peice{,s}	piece{}
  Abolish -buffer peo{lpe,pel}	people 
  Abolish -buffer percentof	percent of 
  Abolish -buffer percentto	percent to 
  Abolish -buffer performence	performance 
  Abolish -buffer perh{asp,pas}	perhaps 
  Abolish -buffer perm{a,e,i}n{a,e,i}nt{,ly}	perm{a}n{e}nt{}
  Abolish -buffer personalyl	personally 
  Abolish -buffer pleasent	pleasant 
  Abolish -buffer poeple	people 
  Abolish -buffer porblem{,s}	problem{}
  Abolish -buffer porvide	provide 
  Abolish -buffer possable	possible 
  Abolish -buffer postition	position 
  Abolish -buffer potentialy	potentially 
  Abolish -buffer pregnent	pregnant 
  Abolish -buffer presance	presence 
  Abolish -buffer probelm{,s}	problem{}
  Abolish -buffer prominant{,ly}	prominent{}
  Abolish -buffer prot{e,o}ge	protégé 
  Abolish -buffer psoition{,ed,ally,s}	position{}
  Abolish -buffer ptogress	progress 
  Abolish -buffer puting	putting 
  Abolish -buffer pwoer	power 
  Abolish -buffer quater{,s,ly}	quarter{}
  Abolish -buffer que{,s}{,t}{io,oi}{n,ns,ms,sn}	que{s}{t}{io}n{,s,s,s}
  Abolish -buffer realyl	really 
  Abolish -buffer re{c,cc}o{m,mm}end	recommend 
  Abolish -buffer rec{eie,ie}v{e,ed,ing}	rec{ei}v{}
  Abolish -buffer recomend{,ation,ations,ed,s}	recommend{}
  Abolish -buffer reommend	recommend 
  Abolish -buffer reconize	recognize 
  Abolish -buffer recrod	record 
  Abolish -buffer religous	religious 
  Abolish -buffer reluctent	reluctant 
  Abolish -buffer remeber	remember 
  Abolish -buffer representativs	representatives 
  Abolish -buffer representives	representatives 
  Abolish -buffer represetned	represented 
  Abolish -buffer represnt	represent 
  Abolish -buffer reserach	research 
  Abolish -buffer resollution	resolution 
  Abolish -buffer resorces	resources 
  Abolish -buffer respom{d,se}	respon{}
  Abolish -buffer responce	response 
  Abolish -buffer respons{able,ibile,ability,iblity}	responsib{le,le,ility,ility}
  Abolish -buffer rest{arau,uara}nt	restaurant 
  Abolish -buffer reult	result 
  Abolish -buffer reveiw{,s,ed,ing}	review{}
  Abolish -buffer rumers	rumors 
  Abolish -buffer rwite	write 
  Abolish -buffer rythm	rhythm 
  Abolish -buffer saidhe	said he 
  Abolish -buffer saidit	said it 
  "Abolish -buffer saidt he	said the 
  Abolish -buffer saidthat	said that 
  Abolish -buffer saidthe	said the 
  Abolish -buffer scedul{e,es,ed,ing,er}	schedul{}
  Abolish -buffer seance	séance 
  Abolish -buffer secratary	secretary 
  Abolish -buffer sectino	section 
  Abolish -buffer seh	she 
  Abolish -buffer selectoin	selection 
  Abolish -buffer sentance	sentence 
  Abolish -buffer sep{are,er}ate	separate 
  Abolish -buffer sercumstances	circumstances 
  Abolish -buffer shcool	school 
  "Abolish -buffer she;ll	she’ll 
  Abolish -buffer shesaid	she said 
  Abolish -buffer shineing	shining 
  Abolish -buffer shiped	shipped 
  Abolish -buffer shoudl	should 
  "Abolish -buffer shoudln't	shouldn’t 
  "Abolish -buffer should of been	should have been 
  "Abolish -buffer should of had	should have had 
  Abolish -buffer shouldent	shouldn’t 
  "Abolish -buffer shouldn;t	shouldn’t 
  Abolish -buffer shouldnt	shouldn’t 
  Abolish -buffer showinf	showing 
  Abolish -buffer signifacnt	significant 
  Abolish -buffer simalar	similar 
  Abolish -buffer similiar	similar 
  Abolish -buffer simpyl	simply 
  Abolish -buffer sincerly	sincerely 
  Abolish -buffer sitll	still 
  Abolish -buffer smae	same 
  Abolish -buffer smoe	some 
  Abolish -buffer soem	some 
  Abolish -buffer sohw	show 
  Abolish -buffer soical	social 
  Abolish -buffer somethign	something 
  Abolish -buffer someting	something 
  Abolish -buffer somthing	something 
  Abolish -buffer somewaht	somewhat 
  Abolish -buffer somtimes	sometimes 
  "Abolish -buffer sot hat	so that 
  Abolish -buffer soudn{,s}	sound{}
  Abolish -buffer speach	speech 
  Abolish -buffer specificaly{,l}	specifically 
  Abolish -buffer statment{,s}	statement{}
  Abolish -buffer stnad	stand 
  Abolish -buffer stopry	story 
  Abolish -buffer stoyr	story 
  Abolish -buffer stroy	story 
  Abolish -buffer stpo	stop 
  Abolish -buffer strentgh	strength 
  Abolish -buffer struggel	struggle 
  Abolish -buffer strugle	struggle 
  Abolish -buffer studnet	student 
  Abolish -buffer successful{l,y,yl}	successful{,ly,ly}
  Abolish -buffer sucess	success 
  Abolish -buffer sucessfull	successful 
  Abolish -buffer sufficiant	sufficient 
  Abolish -buffer suposed	supposed 
  Abolish -buffer suppossed	supposed 
  Abolish -buffer supris{e,ed,es,ing}	surpris{}
  Abolish -buffer swiming	swimming 
  Abolish -buffer tahn	than 
  Abolish -buffer taht	that 
  Abolish -buffer talekd	talked 
  Abolish -buffer talkign	talking 
  Abolish -buffer tath	that 
  Abolish -buffer tecnical	technical 
  Abolish -buffer teh	the 
  Abolish -buffer tehy	they 
  "Abolish -buffer tellt he	tell the 
  Abolish -buffer termoil	turmoil 
  Abolish -buffer tghe	the 
  Abolish -buffer tghis	this 
  Abolish -buffer thansk	thanks 
  Abolish -buffer thats	that’s 
  "Abolish -buffer thatt he	that the 
  Abolish -buffer thatthe	that the 
  Abolish -buffer thecompany	the company 
  Abolish -buffer thefirst	the first 
  Abolish -buffer thegovernment	the government 
  "Abolish -buffer their are	there are 
  "Abolish -buffer their is	there is 
  Abolish -buffer themself	themselves 
  Abolish -buffer themselfs	themselves 
  Abolish -buffer thenew	the new 
  "Abolish -buffer there's is	theirs is 
  Abolish -buffer theri	their 
  Abolish -buffer thesame	the same 
  Abolish -buffer thetwo	the two 
  "Abolish -buffer they're are	there are 
  "Abolish -buffer they're is	there is 
  "Abolish -buffer they;l	they’ll 
  "Abolish -buffer they;ll	they’ll 
  "Abolish -buffer they;r	they’re 
  "Abolish -buffer they;re	they’re 
  "Abolish -buffer they;v	they’ve 
  "Abolish -buffer they;ve	they’ve 
  Abolish -buffer theyll	they’ll 
  Abolish -buffer theyve	they’ve 
  Abolish -buffer thgat	that 
  Abolish -buffer thge	the 
  Abolish -buffer thier	their 
  Abolish -buffer thigsn	things 
  Abolish -buffer thisyear	this year 
  Abolish -buffer thn{a,e}	th{}n 
  Abolish -buffer thnig{,s}	thing{}
  Abolish -buffer threatend	threatened 
  Abolish -buffer thsi	this 
  Abolish -buffer thsoe	those 
  Abolish -buffer thta	that 
  Abolish -buffer tihs	this 
  Abolish -buffer timne	time 
  Abolish -buffer tiogether	together 
  Abolish -buffer tje	the 
  Abolish -buffer tjhe	the 
  Abolish -buffer tka{e,es,ing}	tak{}
  Abolish -buffer tlaking	talking 
  Abolish -buffer todya	today 
  Abolish -buffer togehter	together 
  "Abolish -buffer toldt he	told the 
  Abolish -buffer tomorow	tomorrow 
  Abolish -buffer ton{gih,ihg}t	tonight 
  "Abolish -buffer tot he	to the 
  Abolish -buffer totaly{,l}	totally 
  Abolish -buffer tothe	to the 
  Abolish -buffer towrad	toward 
  Abolish -buffer traditionalyl	traditionally 
  Abolish -buffer transfered	transferred 
  Abolish -buffer tru{el,le}y	truly 
  Abolish -buffer tryed	tried 
  Abolish -buffer tthe	the 
  Abolish -buffer tyhat	that 
  Abolish -buffer tyhe	the 
  Abolish -buffer udnerstand	understand 
  Abolish -buffer understnad	understand 
  "Abolish -buffer undert he	under the 
  Abolish -buffer UnitedStates	United States 
  Abolish -buffer unliek	unlike 
  Abolish -buffer unpleasently	unpleasantly 
  Abolish -buffer untill{,l}	until 
  Abolish -buffer useing	using 
  Abolish -buffer usualyl	usually 
  Abolish -buffer veyr	very 
  Abolish -buffer virtualyl	virtually 
  "Abolish -buffer vis-a-vis	vis-à-vis 
  Abolish -buffer vrey	very 
  Abolish -buffer vulnerible	vulnerable 
  "Abolish -buffer wa snot	was not 
  Abolish -buffer waht	what 
  Abolish -buffer warrent	warrant 
  Abolish -buffer wasnt	wasn’t 
  Abolish -buffer watn	want 
  "Abolish -buffer we;d	we’d 
  "Abolish -buffer we;ll	we’ll 
  "Abolish -buffer we;re	we’re 
  "Abolish -buffer we;ve	we’ve 
  Abolish -buffer wehn	when 
  "Abolish -buffer wern't	weren’t 
  Abolish -buffer werre	were 
  "Abolish -buffer what;s	what’s 
  Abolish -buffer whcih	which 
  "Abolish -buffer whent he	when the 
  "Abolish -buffer where;s	where’s 
  Abolish -buffer wherre	where 
  Abolish -buffer whic	which 
  "Abolish -buffer whicht he	which the 
  Abolish -buffer whihc	which 
  "Abolish -buffer who;s	who’s 
  "Abolish -buffer who;ve	who’ve 
  Abolish -buffer whta	what 
  Abolish -buffer widht	width
  Abolish -buffer wief	wife 
  Abolish -buffer wierd	weird 
  Abolish -buffer wihch	which 
  Abolish -buffer wiht	with 
  "Abolish -buffer will of been	will have been 
  "Abolish -buffer will of had	will have had 
  Abolish -buffer willbe	will be 
  Abolish -buffer windoes	windows 
  Abolish -buffer witha	with a 
  Abolish -buffer withe	with 
  "Abolish -buffer witht he	with the 
  Abolish -buffer withthe	with the 
  Abolish -buffer wiull	will 
  Abolish -buffer wnat{,s,ed}	want{}
  "Abolish -buffer wo'nt	won’t 
  Abolish -buffer woh	who 
  Abolish -buffer wohle	whole 
  Abolish -buffer wokr	work 
  "Abolish -buffer won;t	won’t 
  Abolish -buffer woudl	would 
  "Abolish -buffer woudln't	wouldn’t 
  "Abolish -buffer would of been	would have been 
  "Abolish -buffer would of had	would have had 
  Abolish -buffer wouldbe	would be 
  "Abolish -buffer wouldn;t	wouldn’t 
  Abolish -buffer wouldnt	wouldn’t 
  Abolish -buffer wriet	write 
  Abolish -buffer writting	writing 
  Abolish -buffer wrod	word 
  Abolish -buffer wroet	wrote 
  Abolish -buffer wroking	working 
  Abolish -buffer wtih	with 
  Abolish -buffer wuould	would 
  Abolish -buffer wya	way 
  Abolish -buffer yera	year 
  Abolish -buffer yer{as,sa}	years 
  Abolish -buffer yoiu	you 
  "Abolish -buffer you're own	your own 
  "Abolish -buffer you;d	you’d 
  "Abolish -buffer you;re	you’re 
  Abolish -buffer youare	you are 
  "Abolish -buffer your a	you’re a 
  "Abolish -buffer your an	you’re an 
  "Abolish -buffer your her	you’re her 
  "Abolish -buffer your here	you’re here 
  "Abolish -buffer your his	you’re his 
  "Abolish -buffer your my	you’re my 
  "Abolish -buffer your the	you’re the 
  "Abolish -buffer your their	you’re their 
  "Abolish -buffer your your	you’re your 
  Abolish -buffer youre	you're
  Abolish -buffer youve	you’ve 
  Abolish -buffer ytou	you 
  Abolish -buffer yuo{,r}	you{}
endfunction