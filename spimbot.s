.data
# syscall constants
PRINT_STRING            = 4
PRINT_CHAR              = 11
PRINT_INT               = 1

# memory-mapped I/O
VELOCITY                = 0xffff0010
ANGLE                   = 0xffff0014
ANGLE_CONTROL           = 0xffff0018

BOT_X                   = 0xffff0020
BOT_Y                   = 0xffff0024

TIMER                   = 0xffff001c

REQUEST_PUZZLE          = 0xffff00d0  ## Puzzle
SUBMIT_SOLUTION         = 0xffff00d4  ## Puzzle

BONK_INT_MASK           = 0x1000
BONK_ACK                = 0xffff0060

TIMER_INT_MASK          = 0x8000      
TIMER_ACK               = 0xffff006c 

REQUEST_PUZZLE_INT_MASK = 0x800       ## Puzzle
REQUEST_PUZZLE_ACK      = 0xffff00d8  ## Puzzle

PICKUP                  = 0xffff00f4

# Add any MMIO that you need here (see the Spimbot Documentation)

### Puzzle
GRIDSIZE = 8
has_puzzle:        .word 0                         
puzzle:      .half 0:2000             
heap:        .half 0:2000
atan:	.word 1.0	0.0627493649693	0.125008436356	0.186309524071	0.246227601605	0.304395797365	0.360515164605	0.414358550147	0.46576921248	0.514655376157	0.560982116109	0.604761899245	0.64604487255	0.684909678775	0.721455279646	0.755794016159	0.788045952352	0.818334430307	0.846782698509	0.87351144853	0.898637093056	0.922270630998	0.944516965222	0.96547456049	0.985235350473	1.00388482185	1.0215022198	1.03816083254	1.05392832357	1.06886708838	1.08303461934	1.09648386711	1.1092635909	1.12141869249	1.13299053112	1.14401721762	1.15453388743	1.16457295255	1.17416433318	1.18333567009	1.19211251874	1.20051852654	1.20857559436	1.21630402372	1.22372265066	1.23084896768	1.23769923458	1.24428857936	1.25063109008	1.25673989837	1.26262725568	1.26830460256	1.27378263199	1.27907134706	1.28418011371	1.28911770883	1.29389236435	1.29851180748	1.30298329766	1.30731366036	1.3115093181	1.31557631897	1.31952036281	1.32334682527	1.32706077999	1.330667019	1.3341700716	1.33757422165	1.34088352372	1.34410181782	1.34723274321	1.35027975105	1.35324611618	1.35613494807	1.35894920088	1.36169168297	1.36436506555	1.36697189085	1.36951457973	1.37199543866	1.37441666636	1.3767803599	1.37908852041	1.3813430585	1.38354579915	1.3856984865	1.38780278814	1.38986029925	1.39187254647	1.39384099141	1.39576703415	1.39765201631	1.3994972241	1.40130389111	1.40307320091	1.40480628959	1.40650424804	1.40816812421	1.40979892513	1.41139761889	1.41296513651	1.41450237364	1.41601019225	1.41748942216	1.4189408625	1.42036528316	1.42176342604	1.42313600633	1.4244837137	1.42580721342	1.42710714738	1.42838413517	1.42963877497	1.43087164449	1.43208330185	1.43327428636	2.43444511931	1.43559630474	1.4367283301	1.43784166696	1.43893677163	1.44001408577	1.44107403697	1.4421170393	1.44314349385	1.44415378921	1.44514830197	1.44612739718	1.44709142876	1.44804073994	1.44897566365	1.44989652293	1.45080363123	1.45169729282	1.45257780311	1.45344544894	1.45430050892	1.4551432537	1.45597394627	1.45679284221	1.45760018997	1.45839623107	1.4591812004	1.45995532641	1.46071883132	1.46147193136	1.46221483695	1.46294775288	1.46367087853	1.46438440803	1.46508853041	1.46578342983	1.46646928563	1.46714627261	1.46781456106	1.46847431698	1.46912570219	1.46976887443	1.47040398756	1.47103119159	1.47165063286	1.47226245414	1.47286679472	1.47346379054	1.47405357427	1.4746362754	1.47521202036	1.47578093261	1.4763431327	1.47689873837	1.47744786463	1.47799062384	1.47852712579	1.47905747775	1.47958178459	1.48010014878	1.48061267052	1.48111944777	1.4816205763	1.4821161498	1.48260625988	1.48309099616	1.48357044631	1.48404469612	1.48451382953	1.4849779287	1.48543707401	1.48589134419	1.48634081627	1.48678556571	1.48722566636	1.48766119058	1.4880922092	1.48851879164	1.48894100587	1.4893589185	1.4897725948	1.4901820987	1.4905874929	1.4909888388	1.49138619663	1.4917796254	1.492169183	1.49255492615	1.4929369105	1.4933151906	1.49368981999	1.49406085114	1.49442833554	1.49479232373	1.49515286525	1.49551000874	1.49586380193	1.49621429164	1.49656152386	1.49690554369	1.49724639543	1.49758412257	1.49791876779	1.49825037303	1.49857897944	1.49890462745	1.49922735676	1.49954720637	1.49986421459	1.50017841905	1.50048985673	1.50079856394	1.50110457638	1.50140792913	1.50170865665	1.50200679283	1.50230237096	1.50259542377	1.50288598343	1.50317408159	1.50345974934	1.50374301726	1.50402391542	1.50430247339	1.50457872025	1.5048526846	1.50512439457	1.50539387783	1.50566116162	1.5059262727	1.50618923743	1.50645008173	1.50670883111	1.50696551067	1.50722014512	1.50747275876	1.50772337553	1.50797201898	1.5082187123	1.5084634783	1.50870633946	1.5089473179	1.5091864354	1.5094237134	1.50965917303	1.50989283508	1.51012472004	1.51035484806	1.51058323904	1.51080991252	1.51103488779	1.51125818385	1.5114798194	1.51169981286	1.51191818241	1.51213494594	1.51235012108	1.5125637252	1.51277577542	1.51298628863	1.51319528146	1.5134027703	1.5136087713	1.51381330041	1.51401637331	1.51421800549	1.51441821221	1.51461700852	1.51481440926	1.51501042905	1.51520508232	1.51539838329	1.51559034599	1.51578098427	1.51597031176	1.51615834192	1.51634508804	1.51653056319	1.51671478032	1.51689775215	1.51707949126	1.51726001005	1.51743932077	1.51761743548	1.51779436611	1.5179701244	1.51814472197	1.51831817026	1.51849048057	1.51866166406	1.51883173172	1.51900069444	1.51916856293	1.51933534777	1.51950105942	1.51966570819	1.51982930427	1.51999185771	1.52015337844	1.52031387627	1.52047336086	1.52063184177	1.52078932846	1.52094583022	1.52110135627	1.52125591569	1.52140951746	1.52156217045	1.52171388341	1.52186466499	1.52201452374	1.5221634681	1.5223115064	1.52245864687	1.52260489766	1.52275026681	1.52289476225	1.52303839184	1.52318116332	1.52332308436	1.52346416253	1.52360440531	1.52374382009	1.52388241418	1.52402019479	1.52415716908	1.52429334407	1.52442872676	1.52456332402	1.52469714267	1.52483018945	1.52496247099	1.52509399389	1.52522476464	1.52535478968	1.52548407536	1.52561262797	1.52574045371	1.52586755874	1.52599394912	1.52611963086	1.5262446099	1.52636889212	1.52649248332	1.52661538925	1.52673761558	1.52685916793	1.52698005186	1.52710027287	1.52721983638	1.52733874778	1.52745701238	1.52757463544	1.52769162216	1.5278079777	1.52792370713	1.52803881551	1.5281533078	1.52826718895	1.52838046383	1.52849313726	1.52860521402	1.52871669883	1.52882759637	1.52893791127	1.52904764809	1.52915681138	1.5292654056	1.52937343521	1.52948090458	1.52958781806	1.52969417996	1.52979999452	1.52990526596	1.53000999844	1.5301141961	1.53021786301	1.53032100322	1.53042362074	1.53052571951	1.53062730347	1.53072837649	1.53082894242	1.53092900507	1.53102856819	1.53112763553	1.53122621076	1.53132429755	1.53142189952	1.53151902024	1.53161566328	1.53171183214	1.5318075303	1.5319027612	1.53199752827	1.53209183488	1.53218568437	1.53227908006	1.53237202523	1.53246452313	1.53255657698	1.53264818997	1.53273936525	1.53283010596	1.53292041519	1.53301029602	1.53309975147	1.53318878457	1.53327739829	1.53336559559	1.5334533794	1.53354075261	1.5336277181	1.53371427872	1.53380043728	1.53388619658	1.53397155939	1.53405652845	1.53414110646	1.53422529614	1.53430910014	1.5343925211	1.53447556166	1.53455822439	1.53464051187	1.53472242666	1.53480397127	1.53488514821	1.53496595996	1.53504640897	1.53512649769	1.53520622852	1.53528560386	1.53536462608	1.53544329753	1.53552162054	1.53559959742	1.53567723046	1.53575452192	1.53583147405	1.53590808908	1.53598436923	1.53606031668	1.5361359336	1.53621122214	1.53628618445	1.53636082263	1.53643513877	1.53650913497	1.53658281327	1.53665617573	1.53672922437	1.5368019612	1.5368743882	1.53694650736	1.53701832063	1.53708982996	1.53716103726	1.53723194445	1.53730255341	1.53737286604	1.53744288418	1.53751260968	1.53758204437	1.53765119007	1.53772004858	1.53778862168	1.53785691114	1.53792491872	1.53799264616	1.53806009518	1.5381272675	1.53819416482	1.53826078882	1.53832714117	1.53839322353	1.53845903755	1.53852458485	1.53858986705	1.53865488576	1.53871964256	1.53878413905	1.53884837677	1.5389123573	1.53897608216	1.53903955288	1.53910277099	1.53916573799	1.53922845537	1.53929092461	1.53935314718	1.53941512453	1.53947685812	1.53953834939	1.53959959974	1.5396606106	1.53972138337	1.53978191943	1.53984222017	1.53990228696	1.53996212115	1.54002172409	1.54008109713	1.54014024158	1.54019915877	1.54025785	1.54031631656	1.54037455976	1.54043258085	1.54049038112	1.54054796181	1.54060532418	1.54066246947	1.54071939891	1.54077611371	1.54083261508	1.54088890424	1.54094498236	1.54100085065	1.54105651026	1.54111196238	1.54116720815	1.54122224872	1.54127708524	1.54133171884	1.54138615064	1.54144038176	1.54149441331	1.54154824638	1.54160188207	1.54165532145	1.54170856561	1.54176161561	1.54181447252	1.54186713738	1.54191961123	1.54197189513	1.54202399009	1.54207589713	1.54212761728	1.54217915153	1.5422305009	1.54228166636	1.54233264892	1.54238344954	1.5424340692	1.54248450886	1.54253476948	1.54258485202	1.54263475742	1.54268448661	1.54273404052	1.54278342009	1.54283262623	1.54288165985	1.54293052186	1.54297921315	1.54302773462	1.54307608716	1.54312427165	1.54317228895	1.54322013994	1.54326782549	1.54331534644	1.54336270365	1.54340989797	1.54345693022	1.54350380125	1.54355051188	1.54359706294	1.54364345524	1.54368968958	1.54373576679	1.54378168764	1.54382745295	1.54387306349	1.54391852006	1.54396382343	1.54400897437	1.54405397365	1.54409882203	1.54414352028	1.54418806914	1.54423246936	1.54427672168	1.54432082685	1.54436478558	1.54440859862	1.54445226669	1.5444957905	1.54453917076	1.54458240819	1.54462550349	1.54466845735	1.54471127048	1.54475394357	1.54479647729	1.54483887233	1.54488112938	1.54492324909	1.54496523214	1.5450070792	1.54504879092	1.54509036796	1.54513181096	1.54517312058	1.54521429746	1.54525534224	1.54529625555	1.54533703802	1.54537769028	1.54541821295	1.54545860666	1.545498872	1.5455390096	1.54557902007	1.545618904	1.54565866199	1.54569829464	1.54573780254	1.54577718629	1.54581644645	1.54585558362	1.54589459837	1.54593349128	1.54597226291	1.54601091383	1.5460494446	1.54608785579	1.54612614794	1.54616432161	1.54620237736	1.54624031572	1.54627813723	1.54631584244	1.54635343189	1.54639090609	1.54642826559	1.54646551091	1.54650264257	1.54653966109	1.54657656699	1.54661336077	1.54665004296	1.54668661405	1.54672307455	1.54675942496	1.54679566579	1.54683179751	1.54686782063	1.54690373564	1.54693954302	1.54697524325	1.54701083681	1.54704632418	1.54708170584	1.54711698225	1.54715215389	1.54718722122	1.54722218471	1.54725704481	1.54729180199	1.54732645669	1.54736100937	1.54739546048	1.54742981047	1.54746405978	1.54749820886	1.54753225814	1.54756620806	1.54760005905	1.54763381155	1.54766746598	1.54770102277	1.54773448235	1.54776784514	1.54780111156	1.54783428201	1.54786735693	1.54790033672	1.54793322178	1.54796601254	1.54799870938	1.54803131273	1.54806382296	1.5480962405	1.54812856572	1.54816079902	1.5481929408	1.54822499145	1.54825695134	1.54828882087	1.54832060042	1.54835229037	1.5483838911	1.54841540298	1.54844682639	1.54847816169	1.54850940927	1.54854056949	1.54857164271	1.54860262929	1.54863352961	1.54866434401	1.54869507286	1.54872571651	1.54875627532	1.54878674963	1.5488171398	1.54884744618	1.54887766911	1.54890780893	1.548937866	1.54896784064	1.54899773319	1.54902754401	1.54905727341	1.54908692173	1.5491164893	1.54914597645	1.54917538352	1.54920471082	1.54923395868	1.54926312742	1.54929221736	1.54932122882	1.54935016212	1.54937901758	1.5494077955	1.5494364962	1.54946511999	1.54949366718	1.54952213807	1.54955053297	1.54957885219	1.54960709603	1.54963526478	1.54966335875	1.54969137823	1.54971932352	1.54974719491	1.5497749927	1.54980271718	1.54983036864	1.54985794736	1.54988545363	1.54991288773	1.54994024996	1.54996754059	1.54999475991	1.55002190818	1.55004898569	1.55007599272	1.55010292955	1.55012979643	1.55015659365	1.55018332148	1.55020998019	1.55023657003	1.55026309129	1.55028954422	1.55031592909	1.55034224617	1.5503684957	1.55039467796	1.55042079319	1.55044684166	1.55047282363	1.55049873934	1.55052458905	1.55055037302	1.55057609148	1.5506017447	1.55062733291	1.55065285638	1.55067831533	1.55070371002	1.55072904069	1.55075430758	1.55077951093	1.55080465097	1.55082972796	1.55085474213	1.5508796937	1.55090458292	1.55092941002	1.55095417523	1.55097887879	1.55100352091	1.55102810184	1.5510526218	1.55107708101	1.5511014797	1.5511258181	1.55115009643	1.5511743149	1.55119847375	1.55122257319	1.55124661344	1.55127059472	1.55129451724	1.55131838123	1.55134218688	1.55136593443	1.55138962408	1.55141325604	1.55143683052	1.55146034774	1.55148380789	1.5515072112	1.55153055786	1.55155384807	1.55157708206	1.55160026001	1.55162338213	1.55164644862	1.55166945968	1.55169241552	1.55171531633	1.5517381623	1.55176095364	1.55178369053	1.55180637319	1.55182900179	1.55185157653	1.55187409761	1.55189656521	1.55191897953	1.55194134075	1.55196364906	1.55198590466	1.55200810772	1.55203025843	1.55205235699	1.55207440356	1.55209639834	1.5521183415	1.55214023324	1.55216207372	1.55218386313	1.55220560165	1.55222728946	1.55224892673	1.55227051363	1.55229205036	1.55231353707	1.55233497395	1.55235636116	1.55237769889	1.55239898729	1.55242022655	1.55244141682	1.55246255829	1.55248365112	1.55250469548	1.55252569152	1.55254663943	1.55256753937	1.55258839149	1.55260919597	1.55262995296	1.55265066264	1.55267132515	1.55269194067	1.55271250935	1.55273303135	1.55275350683	1.55277393595	1.55279431886	1.55281465572	1.5528349467	1.55285519193	1.55287539158	1.55289554581	1.55291565476	1.55293571858	1.55295573743	1.55297571147	1.55299564083	1.55301552567	1.55303536614	1.55305516238	1.55307491455	1.55309462279	1.55311428725	1.55313390807	1.5531534854	1.55317301938	1.55319251016	1.55321195788	1.55323136268	1.55325072471	1.5532700441	1.553289321	1.55330855554	1.55332774787	1.55334689813	1.55336600644	1.55338507296	1.55340409781	1.55342308114	1.55344202308	1.55346092376	1.55347978332	1.55349860189	1.55351737961	1.55353611661	1.55355481302	1.55357346898	1.55359208461	1.55361066004	1.55362919541	1.55364769085	1.55366614648	1.55368456243	1.55370293883	1.55372127581	1.55373957349	1.553757832	1.55377605147	1.55379423202	1.55381237377	1.55383047686	1.55384854139	1.55386656751	1.55388455532	1.55390250495	1.55392041652	1.55393829016	1.55395612597	1.55397392409	1.55399168464	1.55400940772	1.55402709346	1.55404474199	1.5540623534	1.55407992783	1.55409746538	1.55411496618	1.55413243034	1.55414985797	1.55416724919	1.55418460412	1.55420192286	1.55421920553	1.55423645224	1.5542536631	1.55427083823	1.55428797774	1.55430508173	1.55432215033	1.55433918362	1.55435618174	1.55437314478	1.55439007286	1.55440696608	1.55442382454	1.55444064837	1.55445743766	1.55447419251	1.55449091305	1.55450759936	1.55452425156	1.55454086975	1.55455745403	1.55457400451	1.5545905213	1.55460700448	1.55462345418	1.55463987048	1.55465625349	1.55467260331	1.55468892005	1.55470520379	1.55472145465	1.55473767272	1.5547538581	1.55477001089	1.55478613119	1.55480221909	1.5548182747	1.55483429811	1.55485028941	1.55486624871	
#### Puzzle



.text
main:
# Construct interrupt mask
	li      $t4, 0
        or      $t4, $t4, REQUEST_PUZZLE_INT_MASK # puzzle interrupt bit
        or      $t4, $t4, TIMER_INT_MASK	  # timer interrupt bit
        or      $t4, $t4, BONK_INT_MASK	          # timer interrupt bit
        or      $t4, $t4, 1                       # global enable
	    mtc0    $t4, $12


        sub $sp, $sp, 4
        sw $ra 0($sp)

        li $a0,  21
        jal atan
        move $t5, $v0

        lw $ra 0($sp)
        add $sp, $sp, 4

        jr $ra
# a0 = expression value
atan:
        addi $sp, $sp, -20
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $ra, 16($sp)

        li $s0, 1 #n
        li $s2, -1 #negative instruction
        li $s3, 0 #sum


        atan_loop:
                bge $s0, 10, atan_end
                        move $a1, $s0

                        jal power

                        div $s1, $v0, $s0 # x^(2n+1) / 2n+1
                        mul $s1, $s1, $s2 # negate
                        mul $s2, $s2, -1

                        add $s3, $s3, $s1
                        addi $s0, $s0, 2

                        j atan_loop
        atan_end:
                
                move $v0, $s3

                lw $s0, 0($sp)
                lw $s1, 4($sp)
                lw $s2, 8($sp)
                lw $s3, 12($sp)
                lw $ra, 16($sp)
                addi $sp, $sp, 20

                jr $ra
        




# a0 = base
# a1 = exponent
power:
        addi $sp, $sp, -4
        sw $s0, 0($sp)


        li $s0, 0 #i
        li $v0, 1 #mul*sum
        power_loop:
                beq $s0, $a1, power_end
                        mul $v0, $v0, $a0
                        addi $s0, $s0, 1
                        j power_loop 
        power_end:
                lw $s0, 0($sp)
                addi $sp, $sp, 4
                jr $ra

#Fill in your code here

infinite:
        j       infinite              # Don't remove this! If this is removed, then your code will not be graded!!!

.kdata
chunkIH:    .space 8  #TODO: Decrease this
non_intrpt_str:    .asciiz "Non-interrupt exception\n"
unhandled_str:    .asciiz "Unhandled interrupt type\n"
.ktext 0x80000180
interrupt_handler:
.set noat
        move      $k1, $at              # Save $at
.set at
        la      $k0, chunkIH
        sw      $a0, 0($k0)             # Get some free registers
        sw      $v0, 4($k0)             # by storing them to a global variable

        mfc0    $k0, $13                # Get Cause register
        srl     $a0, $k0, 2
        and     $a0, $a0, 0xf           # ExcCode field
        bne     $a0, 0, non_intrpt

interrupt_dispatch:                     # Interrupt:
        mfc0    $k0, $13                # Get Cause register, again
        beq     $k0, 0, done            # handled all outstanding interrupts

        and     $a0, $k0, BONK_INT_MASK # is there a bonk interrupt?
        bne     $a0, 0, bonk_interrupt

        and     $a0, $k0, TIMER_INT_MASK # is there a timer interrupt?
        bne     $a0, 0, timer_interrupt

        and 	$a0, $k0, REQUEST_PUZZLE_INT_MASK
        bne 	$a0, 0, request_puzzle_interrupt

        li      $v0, PRINT_STRING       # Unhandled interrupt types
        la      $a0, unhandled_str
        syscall
        j       done

bonk_interrupt:
        sw      $0, BONK_ACK
#Fill in your code here
        j       interrupt_dispatch      # see if other interrupts are waiting

request_puzzle_interrupt:
        sw      $0, REQUEST_PUZZLE_ACK
#Fill in your code here
        j	interrupt_dispatch

timer_interrupt:
        sw      $0, TIMER_ACK
#Fill in your code here
        j   interrupt_dispatch
non_intrpt:                             # was some non-interrupt
        li      $v0, PRINT_STRING
        la      $a0, non_intrpt_str
        syscall                         # print out an error message
# fall through to done

done:
        la      $k0, chunkIH
        lw      $a0, 0($k0)             # Restore saved registers
        lw      $v0, 4($k0)

.set noat
        move    $at, $k1                # Restore $at
.set at
        eret