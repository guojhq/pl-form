# encoding: UTF-8
module ApplicationHelper
  def pl_field(f, field_name)
  	case field_name
    when :capacity
      f.input field_name.to_sym, :input_html => {'autocomplete' => 'off' , 'data-provide' => :typeahead, 'data-items' => 4, 'data-source' => '["2G","4G","8G","16G","24G","32G","60G","64G","120G","128G","256G","512G","1024G"]'}
  	when :check_type
  		f.input field_name.to_sym, :collection => ['CS','CD','RM','CT']
    when :lot_no, :package
      f.input field_name.to_sym, :input_html => { 'autocomplete' => 'off' }
    when :lot_out_time
      f.input field_name.to_sym, :include_blank => true, :value => nil
  	when :reject_code
  		f.input field_name.to_sym, :input_html => {'autocomplete' => 'off' , 'data-provide' => :typeahead, 'data-items' => 4, 'data-source' => '["ABNORMAL","AL01","AL02","AL03","AS01","AS02","BA01","BA019","BA02","BA03","BA04","BA05","BA06","BA07","BA08","BA09","BA10","BA11","BA19","BG01","BG02","BG03","BG04","BG05","BG06","BG07","BG08","BG09","BG10","BIN9","BIN91","BL01","BL02","BL03","BL04","BO-O1","BW01","BW02","BW03","BW04","CB01","CB02","CB03","CB04","CB05","CB06","CB07","CB08","CB09","CB10","CB11","CB12","CB13","CB14","CB15","CB16","CB17","CB18","CB19","CBT01","CBT02","CBT03","CBT04","CBT05","CBT06","CBT07","CCM01","CCM02","CCM03","CCM04","CCM05","CCM06","CCM07","CCM08","CCM09","CCM10","CCM11","CCM12","CCM13","CD01","CD02","CD03","CD04","CD05","CD06","CG01","CG02","CG03","CG04","CG05","CG06","CG07","CG08","CG09","CG10","CG11","CIM01","CIM02","CIM03","CIM04","CIM05","CIM06","CIM07","CIM08","CIM09","CIM10","CIM11","CIM12","CL01","CL02","CL03","CL04","CL05","CL06","CL07","CL08","CL09","CL10","CL11","CL12","CL13","CL14","CL15","CL16","CL17","CL18","CL19","CL20","CL21","CL22","CM01","CM02","CM03","CM04","CM05","CM06","CM07","CM08","CM09","CM10","CM11","CML01","CML02","CML03","CML04","CML05","CML06","CML07","CML08","CML09","CML10","CML11","CML12","CML13","CML14","CP01","CP02","CP03","CS01","CS02","CS03","CS04","CT01","CT02","CT03","CT04","CT05","CT06","CT07","CT08","CW01","CW02","CW03","CW04","DA01","DA02","DA03","DA04","DA05","DA06","DA07","DA08","DA09","DA10","DA11","DA12","DA13","DA14","DA15","DA16","DA17","DA18","DA19","DA20","DA21","DA29","DIEBANK10","DIEBANK25","DL01","DL02","DL03","DL04","DL05","DL06","DL07","DL08","DL09","DL10","DL11","DL12","DL13","DL14","DORJ","DR","DR3","EF01","EFR","EL01(MRB)","EL99(SCRM)","EN01","EN01 (ENG)","ENG03","EXTRADIE","FAL01","FAL02","FAL03","FAS01","FAS02","FAS03","FAS04","FAS05","FAS06","FAS07","FAS08","FAS09","FAS10","FAS11","FAS12","FAS13","FAS14","FBL01","FBL02","FBL03","FBL04","FBW01","FBW02","FBW03","FBW04","FC01","FC02","FC03","FC04","FC05","FC06","FC07","FC08","FC09","FEL01","FEL02","FEL03","FEL04","FHV01","FHV02","FHV03","FHV04","FIL01","FIL02","FIL03","FIL04","GF01","GF02","GF03","GF04","GF05","GF06","GF07","GF19","GO_MT","GT01","GT02","GT03","GT04","GT05","HTS","HV01","HV02","HV03","HV04","IL01","IL02","IL03","IL04","IM01","IM02","IM03","IM04","IM05","IM06","IM07","IM08","IM09","IM10","IM11","IM12","IM13","IM14","IM15","IM16","IM17","IM18","IM19","IROQRM","IRQA","LC01","LC02","LC03","LC04","LC05","LC06","LC07","LC08","LC09","LC10","LC19","MCR01","MCR02","MD01","MD02","MD03","MD04","MD05","MD06","MD07","MD08","MD09","MD10","MD11","MD12","MD13","MD14","MD15","MD16","MD17","MD18","MD19","MD20","MDT01","MK01","MK02","MK03","MK04","MK05","MK06","MK07","MK08","MK09","MK10","MK11","MK12","MK19","MRB","MT01","MT01 (SCRAP)","MT02","MT02 (SCRM)","MT03","MT03 (MTFL)","MTLOST","OQRM","OS01","OS02","OS02 (SCRAP)","PD01","PD02","PD03","PD04","PD05","PD06","PF01","PF02","PF03","PF04","PF05","PF06","PF07","PF19","PKQC","PM01","PM02","PM03","PO01","PO02","PO03","PO04","QAHOLD","RESETQTY","SCC01","SCC01 (PRWK)","SM01","SM02","SM03","SM04","SM05","SM06","SM07","SM08","SM09","SM10","SM11","SM12","SM13","SM14","SM15","SM16","SM17","SM18","SM19","SPC","SR01","SS01","SS02","SS03","SS04","SS05","SS06","SS07","SS08","SS09","SS10","SS11","SS12","SS19","SS20","SS21","TP01","TP02","TP09","UE01","WB01","WB02","WB03","WB04","WB05","WB06","WB07","WB08","WB09","WB10","WB11","WB12","WB13","WB14","WB15","WB16","WB17","WB18","WB19","WB20","WB21","WB22","WB23","WB24","WB25","WB26","WB27","WB28","WB29","WB30","WB31","WB32","WB33","WB34","WB35","WB36","WB37","WI01","WI02","WI03","WI04","WI05","WI06","WI07","WI08","WI09","WI10","WI11","WI12","WI13","WI14","WI19","WP","WS01","WS02","WS03","WS04","WS05","WS06","WS07","WS08","WS09","WS10","WS11"]'}
    when :equipment_no, :machine_no, :m_c
      f.input field_name.to_sym, :input_html => {'autocomplete' => 'off' , 'data-provide' => :typeahead, 'data-items' => 4, 'data-source' => '["ABA001","ABA002","ABA003","ABG001","ABG002","ABG003","ABG004","ABG005","ABG006","ABG007","ABG008","ABG009","ABG010","ABG011","ABG012","ABG013","ADH001","ADH002","ADH003","ADH004","ADH005","ADH006","ADH007","ADH008","ADH009","ADH010","ADH011","ADH012","ADH013","ADH014","ADH015","ADH016","ADH017","ADH018","ADH019","ADH020","ADH021","ADH022","ADH023","ADH024","ADH025","ADH026","ADH027","ADH028","ADH029","ADH030","ADH031","ADH032","ADH033","ADH034","ADH035","ADH036","ADH037","ADH038","ADH039","ADH040","ADH041","ADH042","ADH043","ADH044","ADH045","ADH046","ADH047","ADH048","ADH049","ADH050","ADH051","ADH052","ADH054","ADH055","ADTSD011","ADTSD017","ADTSD1","ADTSD25","ADTSD28","ADTSD31","ADTSD32","ADTSD34","ADTSD36","ADTSD37","ADTSD39","ADTSD4","ADTSD40","ADTSD41","ADTSD45","ADTSD49","ADTSD5","ADTSD6","ADTSD7","ADTSD8","ADTSD9","AWP001","AWP002","AWP003","AWP004","AWP005","AWP006","AWP007","AWP008","AWP009","AWP010","AWP011","AWP012","AWP013","AWP014","AWP015","AWP016","AWP017","AWP018","AWP019","AWP020","AWP021","AWP022","AWP023","AWP024","AWP025","AWP026","AWP027","AWP028","AWP029","AWP030","AWP031","AWP032","AWP033","AWP034","AWP035","AWP036","AWP037","AWP038","AWP039","AWP040","AWP041","AWP042","AWP043","AWP044","AWP045","AWP046","AWP047","AWP048","AWP049","AWP050","AWP051","AWP052","AWP053","AWP054","AWP055","AWP056","AWP057","AWP058","AWP059","AWP060","AWP061","AWP062","AWP063","AWP064","AWP065","AWP066","AWP067","AWP068","AWP069","AWP070","AWP071","AWP072","AWP073","AWP074","AWP075","AWP076","AWP077","AWP078","AWP079","AWP080","AWP081","AWP082","AWP083","AWP084","AWP085","AWP086","AWP087","AWP088","AWP089","AWP090","AWP091","AWP092","AWP093","AWP094","AWP095","AWP096","AWP097","AWP098","AWP099","AWP100","AWP101","AWP103","AWP108","BI001","BIM003","BIM004","BLM001","BLM002","BLS001","BLS002","BML002","BML010","BML015","COV001-1","COV001-2","COV001-3","COV001-4","COV002-1","COV002-2","COV002-3","COV002-4","COV003-1","COV003-2","COV003-3","COV003-4","COV004-1","COV004-2","COV004-3","COV004-4","COV005-1","COV005-2","COV005-3","COV006-1","COV006-2","COV006-3","COV006-4","COV007-1","COV007-2","COV007-3","COV007-4","COV008-1","COV008-2","COV008-3","COV008-4","COV009-1","COV009-2","COV009-3","COV009-4","COV010-1","COV010-2","COV010-4","COV011-1","COV011-2","COV011-3","COV011-4","COV012-1","COV012-2","COV012-3","COV012-4","COV013-1","COV013-2","COV013-3","COV013-4","COV014-1","COV014-2","COV014-3","COV014-4","COV015-1","COV015-2","COV015-3","COV015-4","COV016-1","COV016-2","COV016-3","COV016-4","COV017-1","COV017-2","COV017-3","COV017-4","COV018-1","COV018-2","COV018-3","COV018-4","COV019-1","COV019-2","COV019-3","COV019-4","COV020-1","COV020-2","COV020-3","COV020-4","COV021-1","COV021-2","COV021-3","COV021-4","COV022-1","COV022-2","COV022-3","COV022-4","COV023-1","COV023-2","COV023-3","COV023-4","COV024-1","COV024-2","COV024-3","COV024-4","CPV001","CPV002","CPV003","DBG001","DBG002","DBG003","DBG004","DBG005","DBG006","DDS001","DLS001","DLS002","DLS003","DSW001","DSW002","DSW003","DSW004","DSW005","DSW006","DSW007","DSW008","DSW009","DSW010","DSW011","DSW012","DSW013","DSW014","DSW015","DSW016","DSW017","DSW018","DSW019","DSW020","DSW021","DSW022","DSW023","DSW024","DSW025","DSW026","DSW027","DSW028","DSW029","DSW030","DSW031","DSW032","E0001","EBM001","EBM002","EBM003","EBM004","EBM005","EBM006","EIM001","EIM002","EIM003","EIM004","ELM001","ELM002","ELM003","ELM004","ELM005","ELM006","ELS001","ELS002","ELS003","ELS004","ESM001","ESM002","ESM003","ESM004","GAL001","GAL002","GAL003","GAL004","GAL005","GAL006","GAL007","GAL008","GAL009","GAL010","GAL011","GAL012","GAL013","HBM001","HCH001","HCH002","HCH003","HCH004","HCH005","HCH006","HLS001","HLS002","HLS003","HLS004","HLS005","HLS006","HLS007","HPS001","HPS002","HPS003","HPS004","HPS005","HPS006","HPS007","HPS008","HPS009","HPS010","HPS011","HPS012","HPS013","HPS014","HPS015","HPS016","HPS017","HPS018","HPS019","IAI001","IAI002","IAI003","IAI004","IAI005","ICS004","JCP001","JCP002","JCP003","JCP004","JCP005","JCP006","JEC001","JEC002","JEC004","JEC005","JEC006","JEC007","JEC008","JEC009","JEC010","JEC011","JEC012","KWB001","KWB002","KWB003","KWB004","KWB005","KWB006","KWB007","KWB008","KWB009","KWB010","KWB011","KWB012","KWB013","KWB014","KWB015","KWB016","KWB017","KWB018","KWB019","KWB020","KWB021","KWB022","KWB023","KWB024","KWB025","KWB026","KWB027","KWB028","KWB030","KWB031","KWB032","KWB033","KWB034","KWB035","KWB036","KWB037","KWB038","KWB039","KWB040","KWB041","KWB042","KWB043","KWB044","KWB045","KWB046","KWB047","KWB048","KWB049","KWB050","KWB051","KWB052","KWB053","KWB054","KWB055","KWB056","KWB057","KWB058","KWB059","KWB060","KWB061","KWB062","KWB063","KWB064","KWB065","KWB066","KWB067","KWB068","KWB069","KWB070","KWB071","KWB072","KWB073","KWB074","KWB075","KWB076","KWB077","KWB078","KWB079","KWB080","KWB081","KWB082","KWB083","KWB084","KWB085","KWB086","KWB087","KWB088","KWB089","KWB090","KWB091","KWB092","KWB093","KWB094","KWB095","KWB096","KWB097","KWB098","KWB099","KWB100","KWB101","KWB102","KWB103","KWB104","KWB105","KWB106","KWB107","KWB108","KWB109","KWB110","KWB111","KWB112","KWB113","KWB114","KWB115","KWB116","KWB117","KWB118","KWB119","KWB120","KWB121","KWB122","KWB123","KWB124","KWB125","KWB126","KWB127","KWB128","KWB129","KWB130","KWB131","KWB132","KWB133","KWB134","KWB135","KWB136","KWB137","KWB138","KWB139","KWB140","KWB141","KWB142","KWB143","KWB144","KWB145","KWB146","KWB147","KWB148","KWB149","KWB150","KWB151","KWB152","KWB153","KWB154","KWB155","KWB156","KWB157","KWB158","KWB159","KWB160","KWB161","KWB162","KWB163","KWB164","KWB165","KWB166","KWB167","KWB168","KWB169","KWB170","KWB171","KWB172","KWB173","KWB174","KWB175","KWB176","KWB177","KWB178","KWB179","KWB180","KWB181","KWB182","KWB183","KWB184","KWB185","KWB186","KWB187","KWB188","KWB189","KWB190","KWB191","KWB192","KWB193","KWB194","KWB195","KWB196","KWB197","KWB198","KWB199","KWB200","KWB201","KWB202","KWB203","KWB204","KWB205","KWB206","KWB207","KWB208","KWB209","KWB210","KWB211","KWB212","KWB213","KWB214","KWB215","KWB216","KWB217","KWB218","KWB219","KWB220","KWB221","KWB222","KWB223","KWB224","KWB225","KWB226","KWB227","KWB228","KWB229","KWB230","KWB231","KWB232","KWB233","KWB234","KWB235","KWB236","KWB237","KWB238","KWB239","KWB240","KWB241","KWB242","KWB243","KWB244","KWB245","KWB246","KWB247","KWB248","KWB249","KWB250","KWB251","KWB252","KWB253","KWB254","KWB255","KWB256","KWB257","KWB258","KWB259","KWB260","KWB261","KWB262","KWB263","KWB264","KWB265","KWB266","KWB267","KWB268","KWB269","KWB270","KWB271","KWB272","KWB273","KWB274","KWB275","KWB276","KWB277","KWB278","KWB279","KWB280","KWB281","KWB282","KWB283","KWB284","KWB285","KWB286","KWB287","KWB288","KWB289","KWB290","KWB291","KWB292","KWB293","KWB294","KWB295","KWB296","KWB297","KWB298","KWB299","KWB300","KWB301","KWB302","KWB303","KWB304","KWB305","KWB306","KWB307","KWB308","KWB309","KWB310","KWB311","KWB312","KWB313","KWB314","KWB315","KWB317","KWB318","KWB319","KWB320","KWB321","KWB322","KWB323","KWB324","KWB325","KWB326","KWB327","KWB328","KWB329","KWB330","KWB331","KWB332","KWB333","KWB334","KWB335","KWB336","KWB337","KWB338","KWB339","KWB340","KWB341","KWB342","KWB343","KWB344","KWB345","KWB346","KWB347","KWB349","KWB350","KWB351","KWB352","KWB353","KWB354","KWB355","KWB356","KWB357","KWB358","KWB359","KWB360","KWB361","KWB362","KWB363","KWB364","LDS001","LDS002","LDS003","LDS004","LDS005","LINE05","LINE06","LSL001","LSL002","LSL003","MANUAL","MCH001","MCH002","MCH004","MCH005","MCH006","MCH007","MCH008","MCH009","MCH010","MCH011","MCH012","MCH013","MCH014","MCH015","MCH017","MCH019","MCH020","MCH022","MDT001","MDT002","MDT004","MIJ001","MIJ002","MIJ003","MLU001","MLU002","MLU003","MLU004","MLU005","MLU006","MLU007","MLU008","MLU009","MLU010","MLU011","MLU012","MMH001","MMH002","MMH003","MMH004","MMH005","MMH006","MMH007","MMH008","MMH009","MMH010","MMH011","MMH012","MMH013","MMH014","MMH015","MMH016","MMH017","MMH018","MMH019","MMH020","MMH021","MMH022","MMH023","MMH024","MMH025","MMH026","MMH027","MMH028","MMH029","MMH030","MMH031","MMH032","MMH033","MMH034","MMH035","MMH036","MMH037","MMH038","MMH039","MMH040","MMH042","MML001","MPL001","MPL002","MPL003","MPL004","MPL005","MPL006","MPL007","MPL008","MSCH001","MSCH002","MTCH001","NCT012","NCT013","NCT020","NML001","NML002","NML003","NML004","NML005","NMT003","NMT005","NMT007","NMT019","NMT021","NMT022","NMT027","NMT029","NMT030","NMT032","NMT034","NMT035","NMT036","NMT037","NMT038","NMT039","NMT040","NSL003","NTP001","NTP002","NTP003","NTP004","NTP005","NTP006","NTP007","NTP008","NWM001","NWM002","NWM003","PLM001","PLM002","PSM001","PWP001","QMCH-001","QMCH-002","QMCH-004","QMCH-005","QMCH-006","QMCH-007","QMCH-008","QMCH-009","QMCH-010","QMCH-011","QMCH-012","QMCH-013","QMCH-014","QMCH-015","QMCH-016","QTCH-001","QTCH-002","QTCH-003","QTCH-004","QTCH-005","QTCH-006","RCP001","RCP002","RDB-001","RDB-002","RDB-003","RDB-004","RDB-005","RDB-006","RDB-007","RDB-008","RDB-009","RDB-010","RDB-011","RDB-012","RDB-013","RDB-014","RDB-015","RDB-016","RDB-017","RDB-018","RDB-019","RDB-020","RDB-021","RDB-022","RDB-023","RDB-024","RDB-025","RDB-026","RDB-027","RDB-028","RDB-029","RDB-030","RDB-031","RDB-032","RDB-033","RDB-034","RDB-035","RDB-036","RDB-037","RDB-038","RDB-039","RDB-040","RDB-041","RDB-042","RDB-043","RDB-044","RDB-045","RDB-046","RDB-047","RDB-048","RDB-049","RDB-050","RDB-051","RDB-052","RDB-053","RDB-054","RDB-055","RDB-056","RDB-057","RDB-058","RDB-059","RDB-060","RDB-061","RDB-062","RDB-063","RDB-064","RDB-065","RDB-066","RDB-067","RDB-068","RDB-069","RDB-070","RDB-071","RDB-072","RDB-073","RDB-074","RDB-075","RDB-076","RDB-077","RDB-078","RDB-079","RDB-080","RDB-081","RDB-082","RDB-083","RDB-084","RDB-085","RDB-086","RDB-087","RDB-088","RDB-089","RDB-090","RDB-091","RDB-092","RDB-093","RDB-094","RDB-095","RDB-096","RDB-097","RDB-098","RDB-099","RDB-100","RDB-101","RDB-102","RDB-103","RDB-104","RDB-105","RDB-106","RDB-107","RDB-108","RDB-109","RDB-110","RDB-111","RDB-112","RDB-113","RDB-114","RDB-115","RDB-116","RDB-117","RDB-118","RDB-119","RDB-120","RDB-121","RDB-122","SBO001","SBO002","SBO003","SBO004","SBO005","SBO007","SBO008","SBO009","SBO010","SBO011","SBO012","SBO013","SBO014","SBO015","SBO016","SBO017","SBO018","SCT001","SMT001","SMT002","SMT003","SMT004","SMT005","SMT006","SMT006-1","SMT006-2","STI001","STI002","STI003","STI004","STI005","STI006","STI007","STS001","STS002","STS004","STS005","STS006","TAM001","TAM002","TAM003","TAM004","TAM005","TAM006","TAM007","TAM008","TAM009","TCH001","TCH002","TCH003","TCH005","TCH007","TCT-001","TCT-002","TCT-005","TCT-006","TIM001","TIM002","TIM003","TIM004","TIM005","TSB001","TSB002","TWP001","TWP002","TWP003","TWP004","TWP005","TWP006","TWP007","TWP008","TWP009","TWP010","TWP011","TWP012","TWP013","TWP014","TWP015","TWP016","TWP017","TWP018","TWP019","TWP020","TWP021","UVIRRADIATOR001","VOS001-1","VOS001-2","VOS002-1","VOS002-2","VOS003-1","VOS003-2","VOS004","VOS004-1","VOS004-2","VPL001","WORKCELL01","WORKCELL02","WORKCELL03","WORKCELL04","WORKCELL05","WORKCELL06","WORKCELL07","WORKCELL08","WORKCELL09","WORKCELL10","WORKCELL11","WORKCELL12","WORKCELL13","WORKCELL14","WORKCELL15","WORKCELL16","WORKCELL20A","WORKCELL20B","YUC001","YUC002","YUC003"]'}
  	when :status_code
  		f.input field_name.to_sym, :collection => f.object.status_codes, :required => true
    when :kgd_machine_status
      f.input field_name.to_sym, :collection => ['A :Operation Time (机器运行时间)','B :Check Probe Mark (检查针痕)','C :Change Probe Card (更换针卡)','D :Setup Device (机器转换不同产品)','E :PM & CAL (维护校准时间)','F :Prober Down Time (针测机停机时间)','G :Tester Down Time (测试机停机时间)','H :Facility Down (厂务停机时间)','I :Engeer Use Time (工程使用时间)','J :End lot Time (Lot转换时间)','K :Idle (待料时间)','L :Misc (其它)'], :required => true
  	else
  		f.input field_name.to_sym
  	end
  end
end
