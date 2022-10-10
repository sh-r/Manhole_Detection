function preprocess()

	closedFiles=["0001.jpg",
"001.jpg",
"002.jpg",
"01.jpg",
"01830928301.jpg",
"09u3e091.jpg",
"1.jpg",
"100.jpg",
"102.jpg",
"107.jpg",
"108.jpg",
"11.jpg",
"112.jpg",
"117.jpg",
"119.jpg",
"12.jpg",
"120.jpg",
"129.jpg",
"13.jpg",
"131.jpg",
"133.jpg",
"134.jpg",
"135.jpg",
"136.jpg",
"139.jpg",
"140.jpg",
"141.jpg",
"145.jpg",
"151.jpg",
"152.jpg",
"154.jpg",
"159.jpg",
"161.jpg",
"162.jpg",
"164.jpg",
"165.jpg",
"167.jpg",
"168.jpg",
"170.jpg",
"173.jpg",
"174.jpg",
"175.jpg",
"180.jpg",
"181.jpg",
"182.jpg",
"185.jpg",
"187.jpg",
"188.jpg",
"189.jpg",
"19.jpg",
"191.jpg",
"193.jpg",
"198.jpg",
"199.jpg",
"2.jpg",
"2.paper-mario-the-origami-king-10.jpg",
"2.rawImage.jpg",
"20.jpg",
"200.jpg",
"201.jpg",
"202.jpg",
"203.jpg",
"21.jpg",
"210.jpg",
"215.jpg",
"224.jpg",
"226.jpg",
"227.jpg",
"228.jpg",
"230.jpg",
"231.jpg",
"233.jpg",
"234.jpg",
"235.jpg",
"238.jpg",
"239.jpg",
"244.jpg",
"249.jpg",
"25.jpg",
"252.jpg",
"253.jpg",
"258.jpg",
"263.jpg",
"266.jpg",
"267.jpg",
"270.jpg",
"273.jpg",
"277.jpg",
"278.jpg",
"28.jpg",
"283.jpg",
"285.jpg",
"287.jpg",
"288.jpg",
"291.jpg",
"297.jpg",
"2f3f43.jpg",
"3.jpg",
"3.o-connor-street-closure-construction-opening.jpg",
"302.jpg",
"305.jpg",
"310.jpg",
"313.jpg",
"315.jpg",
"317.jpg",
"319.jpg",
"32.jpg",
"320.jpg",
"321.jpg",
"323.jpg",
"324.jpg",
"328.jpg",
"331.jpg",
"335.jpg",
"336.jpg",
"339.jpg",
"341.jpg",
"342.jpg",
"343.jpg",
"344.jpg",
"345.jpg",
"349.jpg",
"352.jpg",
"354.jpg",
"358.jpg",
"368.jpg",
"371.jpg",
"372.jpg",
"374.jpg",
"375.jpg",
"376.jpg",
"377.jpg",
"379.jpg",
"380.jpg",
"387.jpg",
"389.jpg",
"391.jpg",
"394.jpg",
"3r2f3f.jpg",
"4.jpg",
"40.jpg",
"402.jpg",
"403.jpg",
"404.jpg",
"406.jpg",
"410.jpg",
"413.jpg",
"415.jpg",
"416.jpg",
"419.jpg",
"42.jpg",
"423.jpg",
"424.jpg",
"425.jpg",
"429.jpg",
"43.jpg",
"435.jpg",
"439.jpg",
"44.jpg",
"443.jpg",
"444.jpg",
"445.jpg",
"446.jpg",
"447.jpg",
"450.jpg",
"452.jpg",
"453.jpg",
"46.jpg",
"460.jpg",
"461.jpg",
"462.jpg",
"463.jpg",
"464.jpg",
"465.jpg",
"466.jpg",
"467.jpg",
"469.jpg",
"47.jpg",
"470.jpg",
"472.jpg",
"473.jpg",
"474.jpg",
"476.jpg",
"477.jpg",
"479.jpg",
"48.jpg",
"480.jpg",
"481.jpg",
"482.jpg",
"483.jpg",
"484.jpg",
"485.jpg",
"486.jpg",
"487.jpg",
"489.jpg",
"49.jpg",
"491.jpg",
"494.jpg",
"499.jpg",
"4t342.jpg",
"5.jpg",
"500.jpg",
"502.jpg",
"503.jpg",
"504.jpg",
"505.jpg",
"507.jpg",
"508.jpg",
"51.jpg",
"510.jpg",
"512.jpg",
"518.jpg",
"519.jpg",
"52.jpg",
"522.jpg",
"523.jpg",
"524.jpg",
"525.jpg",
"528.jpg",
"529 (1).jpg",
"53.jpg",
"530 (1).jpg",
"531.jpg",
"532.jpg",
"539.jpg",
"54.jpg",
"543.jpg",
"545.jpg",
"546.jpg",
"547.jpg",
"55.jpg",
"550.jpg",
"56.jpg",
"564y4fr.jpg",
"58.jpg",
"6.26PRR_manhole_cover.jpg",
"6.crosswalk2.jpg",
"6.pexels-photo-27629.jpg",
"61.jpg",
"62.jpg",
"67.jpg",
"69.jpg",
"70.jpg",
"72.jpg",
"75.jpg",
"76.jpg",
"77.jpg",
"79.jpg",
"81.jpg",
"86.jpg",
"87.jpg",
"88.jpg",
"91.jpg",
"92.jpg",
"94.jpg",
"97.jpg",
"99.jpg",
"download (10).jpg",
"download (12).jpg",
"download (4).jpg",
"download (5).jpg",
"download (7).jpg",
"fefqw.jpg",
"gettyimages-1005316792-612x612.jpg",
"gettyimages-1006120476-612x612.jpg",
"gettyimages-1006716170-612x612.jpg",
"gettyimages-1011283230-612x612.jpg",
"gettyimages-1012128636-612x612.jpg",
"gettyimages-1024789946-612x612.jpg",
"gettyimages-1031023134-612x612.jpg",
"gettyimages-1031054902-612x612.jpg",
"gettyimages-1036747276-612x612.jpg",
"gettyimages-1036747278-612x612.jpg",
"gettyimages-103879489-612x612.jpg",
"gettyimages-1043021176-612x612.jpg",
"gettyimages-1064232542-612x612.jpg",
"gettyimages-1068546488-612x612.jpg",
"gettyimages-1073488218-612x612.jpg",
"gettyimages-1073610844-612x612.jpg",
"gettyimages-1075643292-612x612.jpg",
"gettyimages-1079938266-612x612.jpg",
"gettyimages-1079938272-612x612.jpg",
"gettyimages-108224027-612x612.jpg",
"gettyimages-1083775694-612x612.jpg",
"gettyimages-1084668418-612x612.jpg",
"gettyimages-1086758792-612x612.jpg",
"gettyimages-108880781-612x612.jpg",
"gettyimages-1091308106-612x612.jpg",
"gettyimages-1093189722-612x612.jpg",
"gettyimages-1093189940-612x612.jpg",
"gettyimages-1124489765-612x612.jpg",
"gettyimages-1129211195-612x612.jpg",
"gettyimages-1130576507-612x612.jpg",
"gettyimages-1132062585-612x612.jpg",
"gettyimages-1133254377-612x612.jpg",
"gettyimages-1135304318-612x612.jpg",
"gettyimages-1136675158-612x612.jpg",
"gettyimages-1139008334-612x612.jpg",
"gettyimages-1145797605-612x612.jpg",
"gettyimages-1162137892-612x612.jpg",
"gettyimages-1163363254-612x612.jpg",
"gettyimages-1164533119-612x612.jpg",
"gettyimages-1164930212-612x612.jpg",
"gettyimages-1166957899-612x612.jpg",
"gettyimages-1170940292-612x612.jpg",
"gettyimages-1171095863-612x612.jpg",
"gettyimages-1173233372-612x612.jpg",
"gettyimages-1173763414-612x612.jpg",
"gettyimages-1182658893-612x612.jpg",
"gettyimages-1183064631-612x612.jpg",
"gettyimages-1184469781-612x612.jpg",
"gettyimages-1187854866-612x612.jpg",
"gettyimages-1188831656-612x612.jpg",
"gettyimages-1190290269-612x612.jpg",
"gettyimages-1190384088-612x612.jpg",
"gettyimages-1191505960-612x612.jpg",
"gettyimages-119544646-612x612.jpg",
"gettyimages-1203246417-612x612.jpg",
"gettyimages-1210084495-612x612.jpg",
"gettyimages-1211286980-612x612.jpg",
"gettyimages-1212428367-612x612.jpg",
"gettyimages-1216249520-612x612.jpg",
"gettyimages-1225905415-612x612.jpg",
"gettyimages-1230922700-612x612.jpg",
"gettyimages-1232263354-612x612.jpg",
"gettyimages-1238250315-612x612.jpg",
"gettyimages-124288868-612x612.jpg",
"gettyimages-1242949807-612x612.jpg",
"gettyimages-1253458842-612x612.jpg",
"gettyimages-1256007825-612x612.jpg",
"gettyimages-1257993788-612x612.jpg",
"gettyimages-1261870742-612x612.jpg",
"gettyimages-1264108511-612x612.jpg",
"gettyimages-1269540695-612x612.jpg",
"gettyimages-1274921144-612x612.jpg",
"gettyimages-128081967-612x612.jpg",
"gettyimages-1281018889-612x612.jpg",
"gettyimages-1281018957-612x612.jpg",
"gettyimages-1291308209-612x612.jpg",
"gettyimages-1291308215-612x612.jpg",
"gettyimages-1291639581-612x612.jpg",
"gettyimages-1291639729-612x612.jpg",
"gettyimages-1298781690-612x612.jpg",
"gettyimages-1298781703-612x612.jpg",
"gettyimages-132280681-612x612.jpg",
"gettyimages-134281629-612x612.jpg",
"gettyimages-145790542-612x612.jpg",
"gettyimages-156966817-612x612.jpg",
"gettyimages-157419197-612x612.jpg",
"gettyimages-158727751-612x612.jpg",
"gettyimages-161356261-612x612.jpg",
"gettyimages-161356262-612x612.jpg",
"gettyimages-161356264-612x612.jpg",
"gettyimages-162403780-612x612.jpg",
"gettyimages-166169394-612x612.jpg",
"gettyimages-168528932-612x612.jpg",
"gettyimages-170024442-612x612.jpg",
"gettyimages-170706310-612x612.jpg",
"gettyimages-171154875-612x612.jpg",
"gettyimages-171256269-612x612.jpg",
"gettyimages-171278683-612x612.jpg",
"gettyimages-171319813-612x612.jpg",
"gettyimages-172084280-612x612.jpg",
"gettyimages-173070351-612x612.jpg",
"gettyimages-173335232-612x612.jpg",
"gettyimages-173851475-612x612.jpg",
"gettyimages-175869188-612x612.jpg",
"gettyimages-175869213-612x612.jpg",
"gettyimages-180370786-612x612.jpg",
"gettyimages-182050185-612x612.jpg",
"gettyimages-184310797-612x612.jpg",
"gettyimages-186472517-612x612.jpg",
"gettyimages-3003-012411-612x612.jpg",
"gettyimages-3500-000029-612x612.jpg",
"gettyimages-450771520-612x612.jpg",
"gettyimages-458274305-612x612.jpg",
"gettyimages-458614181-612x612.jpg",
"gettyimages-458969433-612x612.jpg",
"gettyimages-458991859-612x612.jpg",
"gettyimages-459000475-612x612.jpg",
"gettyimages-459253657-612x612.jpg",
"gettyimages-466373904-612x612.jpg",
"gettyimages-471567955-612x612.jpg",
"gettyimages-477019430-612x612.jpg",
"gettyimages-484252729-612x612.jpg",
"gettyimages-485346347-612x612.jpg",
"gettyimages-485595859-612x612.jpg",
"gettyimages-487259133-612x612.jpg",
"gettyimages-488489513-612x612.jpg",
"gettyimages-494488451-612x612.jpg",
"gettyimages-497298537-612x612.jpg",
"gettyimages-497381185-612x612.jpg",
"gettyimages-499137019-612x612.jpg",
"gettyimages-500066733-612x612.jpg",
"gettyimages-506220485-612x612.jpg",
"gettyimages-508317571-612x612.jpg",
"gettyimages-510815127-612x612.jpg",
"gettyimages-511026212-612x612.jpg",
"gettyimages-511118423-612x612.jpg",
"gettyimages-511684369-612x612.jpg",
"gettyimages-511782285-612x612.jpg",
"gettyimages-511821779-612x612.jpg",
"gettyimages-511824099-612x612.jpg",
"gettyimages-511826537-612x612.jpg",
"gettyimages-512342929-612x612.jpg",
"gettyimages-514569203-612x612.jpg",
"gettyimages-515041985-612x612.jpg",
"gettyimages-515421020-612x612.jpg",
"gettyimages-519771895-612x612.jpg",
"gettyimages-521031594-612x612.jpg",
"gettyimages-521954794-612x612.jpg",
"gettyimages-523657220-612x612.jpg",
"gettyimages-523816763-612x612.jpg",
"gettyimages-525408199-612x612.jpg",
"gettyimages-527178144-612x612.jpg",
"gettyimages-528257726-612x612.jpg",
"gettyimages-528855011-612x612.jpg",
"gettyimages-529358152-612x612.jpg",
"gettyimages-530070690-612x612.jpg",
"gettyimages-532631017-612x612.jpg",
"gettyimages-533798511-612x612.jpg",
"gettyimages-534938490-612x612.jpg",
"gettyimages-535734543-612x612.jpg",
"gettyimages-535734727-612x612.jpg",
"gettyimages-537774100-612x612.jpg",
"gettyimages-543211361-612x612.jpg",
"gettyimages-546337895-612x612.jpg",
"gettyimages-550669503-612x612.jpg",
"gettyimages-550751649-612x612.jpg",
"gettyimages-551998089-612x612.jpg",
"gettyimages-553019983-612x612.jpg",
"gettyimages-553020513-612x612.jpg",
"gettyimages-556076579-612x612.jpg",
"gettyimages-556719455-612x612.jpg",
"gettyimages-557220579-612x612.jpg",
"gettyimages-558294991-612x612.jpg",
"gettyimages-558954599-612x612.jpg",
"gettyimages-559545297-612x612.jpg",
"gettyimages-559545901-612x612.jpg",
"gettyimages-559663615-612x612.jpg",
"gettyimages-559767017-612x612.jpg",
"gettyimages-560249559-612x612.jpg",
"gettyimages-560258941-612x612.jpg",
"gettyimages-561340195-612x612.jpg",
"gettyimages-562390257-612x612.jpg",
"gettyimages-562392715-612x612.jpg",
"gettyimages-562392853-612x612.jpg",
"gettyimages-562399093-612x612.jpg",
"gettyimages-562399461-612x612.jpg",
"gettyimages-562789483-612x612.jpg",
"gettyimages-562793419-612x612.jpg",
"gettyimages-562847419-612x612.jpg",
"gettyimages-562943367-612x612.jpg",
"gettyimages-563418179-612x612.jpg",
"gettyimages-563474985-612x612.jpg",
"gettyimages-564004405-612x612.jpg",
"gettyimages-565792189-612x612.jpg",
"gettyimages-567815145-612x612.jpg",
"gettyimages-568527517-612x612.jpg",
"gettyimages-57648421-612x612.jpg",
"gettyimages-577152125-612x612.jpg",
"gettyimages-580488429-612x612.jpg",
"gettyimages-581904385-612x612.jpg",
"gettyimages-584182165-612x612.jpg",
"gettyimages-587189619-612x612.jpg",
"gettyimages-588593680-612x612.jpg",
"gettyimages-589715047-612x612.jpg",
"gettyimages-589719823-612x612.jpg",
"gettyimages-590290133-612x612.jpg",
"gettyimages-590470526-612x612.jpg",
"gettyimages-592024377-612x612.jpg",
"gettyimages-592255493-612x612.jpg",
"gettyimages-594399373-612x612.jpg",
"gettyimages-594643693-612x612.jpg",
"gettyimages-595899947-612x612.jpg",
"gettyimages-597288181-612x612.jpg",
"gettyimages-598782575-612x612.jpg",
"gettyimages-599653615-612x612.jpg",
"gettyimages-599966919-612x612.jpg",
"gettyimages-600696565-612x612.jpg",
"gettyimages-600800059-612x612.jpg",
"gettyimages-601028265-612x612.jpg",
"gettyimages-601252083-612x612.jpg",
"gettyimages-603750643-612x612.jpg",
"gettyimages-608997687-612x612.jpg",
"gettyimages-609244563-612x612.jpg",
"gettyimages-611468299-612x612.jpg",
"gettyimages-611486683-612x612.jpg",
"gettyimages-611487637-612x612.jpg",
"gettyimages-627770365-612x612.jpg",
"gettyimages-636746283-612x612.jpg",
"gettyimages-637175408-612x612.jpg",
"gettyimages-638721969-612x612.jpg",
"gettyimages-644026067-612x612.jpg",
"gettyimages-644034093-612x612.jpg",
"gettyimages-644039553-612x612.jpg",
"gettyimages-645818137-612x612.jpg",
"gettyimages-645899041-612x612.jpg",
"gettyimages-647379502-612x612.jpg",
"gettyimages-649127737-612x612.jpg",
"gettyimages-649147361-612x612.jpg",
"gettyimages-649168289-612x612.jpg",
"gettyimages-649986193-612x612.jpg",
"gettyimages-650023849-612x612.jpg",
"gettyimages-650043235-612x612.jpg",
"gettyimages-653034189-612x612.jpg",
"gettyimages-658142455-612x612.jpg",
"gettyimages-660575295-612x612.jpg",
"gettyimages-665505503-612x612.jpg",
"gettyimages-668794779-612x612.jpg",
"gettyimages-668802205-612x612.jpg",
"gettyimages-672208079-612x612.jpg",
"gettyimages-672717907-612x612.jpg",
"gettyimages-672720901-612x612.jpg",
"gettyimages-676914907-612x612.jpg",
"gettyimages-678060036-612x612.jpg",
"gettyimages-678060082-612x612.jpg",
"gettyimages-678656727-612x612.jpg",
"gettyimages-678872345-612x612.jpg",
"gettyimages-678882599-612x612.jpg",
"gettyimages-680838001-612x612.jpg",
"gettyimages-681942257-612x612.jpg",
"gettyimages-683777635-612x612.jpg",
"gettyimages-683818281-612x612.jpg",
"gettyimages-683822629-612x612.jpg",
"gettyimages-686803297-612x612.jpg",
"gettyimages-688949041-612x612.jpg",
"gettyimages-691108993-612x612.jpg",
"gettyimages-693388230-612x612.jpg",
"gettyimages-709190771-612x612.jpg",
"gettyimages-74065035-612x612.jpg",
"gettyimages-742255791-612x612.jpg",
"gettyimages-746118279-612x612.jpg",
"gettyimages-748595475-612x612.jpg",
"gettyimages-758639027-612x612.jpg",
"gettyimages-779127-612x612.jpg",
"gettyimages-78155814-612x612.jpg",
"gettyimages-807626320-612x612.jpg",
"gettyimages-83985916-612x612.jpg",
"gettyimages-84772677-612x612.jpg",
"gettyimages-851194218-612x612.jpg",
"gettyimages-86083304-612x612.jpg",
"gettyimages-872638584-612x612.jpg",
"gettyimages-882337980-612x612.jpg",
"gettyimages-884281860-612x612.jpg",
"gettyimages-88782783-612x612.jpg",
"gettyimages-892507434-612x612.jpg",
"gettyimages-90060171-612x612.jpg",
"gettyimages-904645482-612x612.jpg",
"gettyimages-904645488-612x612.jpg",
"gettyimages-904645586-612x612.jpg",
"gettyimages-904645648-612x612.jpg",
"gettyimages-904645818-612x612.jpg",
"gettyimages-904645922-612x612.jpg",
"gettyimages-904645940-612x612.jpg",
"gettyimages-904646046-612x612.jpg",
"gettyimages-904646094-612x612.jpg",
"gettyimages-904652438-612x612.jpg",
"gettyimages-912501004-612x612.jpg",
"gettyimages-91325374-612x612.jpg",
"gettyimages-914707172-612x612.jpg",
"gettyimages-915403062-612x612.jpg",
"gettyimages-923387516-612x612.jpg",
"gettyimages-92702960-612x612.jpg",
"gettyimages-930227248-612x612.jpg",
"gettyimages-930238874-612x612.jpg",
"gettyimages-938760052-612x612.jpg",
"gettyimages-938796514-612x612.jpg",
"gettyimages-939553032-612x612.jpg",
"gettyimages-946389162-612x612.jpg",
"gettyimages-946419338-612x612.jpg",
"gettyimages-960352696-612x612.jpg",
"gettyimages-964278888-612x612.jpg",
"gettyimages-975037744-612x612.jpg",
"gettyimages-975428294-612x612.jpg",
"gettyimages-989376314-612x612.jpg",
"gettyimages-BU000108-612x612.jpg",
"gettyimages-BU003521-612x612.jpg",
"gettyimages-TR005777-612x612.jpg",
"images (10).jpg",
"images (17).jpg",
"images (4).jpg",
"images (5).jpg",
"images (6).jpg",
"images (7).jpg",
"images (9).jpg",
"test_full_image_Av._Jose_Nogueira_Vieira_-_Bairro_centro_2.MP4_frames_frame_000339.jpg",
"test_full_image_Av._Jose_Nogueira_Vieira_-_Bairro_centro_2.MP4_frames_frame_000348.jpg",
"test_full_image_Av._Jose_Nogueira_Vieira_-_Bairro_centro_2.MP4_frames_frame_000382.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000068.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000135.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000162.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000167.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000194.jpg",
"test_full_image_Av._Tres_Barras_-_Bairro_centro_2.MP4_frames_frame_000337.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000036.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000210.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000293.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000325.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000360.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000394.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000399.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000426.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000430.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000453.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000455.jpg",
"test_full_image_Av._Tres_Barras_-_Centro_bairro_2.MP4_frames_frame_000460.jpg",
"train_full_image_Av._Marinha_faixa_1_-_Centro-bairro.MP4_frames_frame_000442.jpg",
"train_full_image_Av._Marinha_faixa_2_-_Bairro-centro.MP4_frames_frame_000056.jpg",
"train_full_image_Av._Marinha_faixa_2_-_Centro-bairro.MP4_frames_frame_000053.jpg",
"train_full_image_Av._Marinha_faixa_2_-_Centro-bairro.MP4_frames_frame_000441.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000035.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000056.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000106.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000132.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000184.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000205.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000228.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000013.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000053.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000054.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000075.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000101.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000102.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000206.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000230.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000252.jpg",
"train_full_image_Candelaria_-_Centro-bairro.MP4_frames_frame_000253.jpg",
"train_full_image_Filinto_Muller_-_Bairro-centro.MP4_frames_frame_000248.jpg",
"train_full_image_Filinto_Muller_-_Bairro-centro.MP4_frames_frame_000268.jpg",
"train_full_image_Filinto_Muller_-_Bairro-centro.MP4_frames_frame_000311.jpg",
"train_full_image_Filinto_Muller_-_Bairro-centro.MP4_frames_frame_000314.jpg",
"train_full_image_Filinto_Muller_-_Centro-bairro.MP4_frames_frame_000055.jpg",
"train_full_image_Francisco_dos_Anjos_-_Bairro-centro.MP4_frames_frame_000024.jpg",
"train_full_image_Francisco_dos_Anjos_-_Bairro-centro.MP4_frames_frame_000049.jpg",
"train_full_image_Francisco_dos_Anjos_-_Bairro-centro.MP4_frames_frame_000076.jpg",
"train_full_image_Francisco_dos_Anjos_-_Bairro-centro.MP4_frames_frame_000103.jpg",
"train_full_image_Francisco_dos_Anjos_-_Centro-bairro.MP4_frames_frame_000206.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000001.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000002.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000019.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000035.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000048.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000072.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000092.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000105.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000158.jpg",
"train_full_image_Jasmin_-_Completo.MP4_frames_frame_000189.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000028.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000110.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000134.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000230.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000255.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000305.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000334.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000022.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000052.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000101.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000126.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000173.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000222.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Centro-bairro.MP4_frames_frame_000246.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Bairro-centro.MP4_frames_frame_000002.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Bairro-centro.MP4_frames_frame_000022.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Bairro-centro.MP4_frames_frame_000023.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000016.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000032.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000033.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000051.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000054.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000067.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000068.jpg",
"train_full_image_Raquel_de_Queiroz_2_-_Centro-bairro.MP4_frames_frame_000076.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000048.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000070.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000093.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000164.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000185.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000232.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000010.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000011.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000116.jpg",
"train_full_image_Rua_Clineu_Da_Costa_moraes_-_Centro-bairro.MP4_frames_frame_000239.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000085.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000134.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000019.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000084.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000108.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_2.MP4_frames_frame_000115.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000026.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000032.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000033.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000056.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000086.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000113.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000114.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000121.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000144.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000173.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000177.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000201.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000202.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000264.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000265.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000290.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000311.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000346.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000396.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_1.MP4_frames_frame_000397.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_2.MP4_frames_frame_000020.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_2.MP4_frames_frame_000021.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Centro-bairro._Parte_2.MP4_frames_frame_000047.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Bairro_centro_1.MP4_frames_frame_000137.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_1.MP4_frames_frame_000038.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_1.MP4_frames_frame_000085.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_1.MP4_frames_frame_000097.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000087.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000105.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000151.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000180.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000224.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000287.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000047.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000071.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000121.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000145.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000325.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000468.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_1.MP4_frames_frame_000001.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_1.MP4_frames_frame_000004.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_1.MP4_frames_frame_000034.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_3.MP4_frames_frame_000105.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_3.MP4_frames_frame_000128.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_3.MP4_frames_frame_000178.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_3.MP4_frames_frame_000202.jpg",
"vwrf33.jpg",
"wd232.jpg",
"wqd3.jpg",
"wvwe.jpg"];

	openFiles = ["000001.jpg",
"1.ub-open-manhole-in-ulaan-baatar.jpg",
"10.jpg",
"103.jpg",
"104.jpg",
"124.jpg",
"127.jpg",
"196.jpg",
"2.open-manhole-cover-with-cones-D77DHK.jpg",
"204.jpg",
"211.jpg",
"225.jpg",
"229.jpg",
"236.jpg",
"240.jpg",
"251.jpg",
"257.jpg",
"261.jpg",
"264.jpg",
"268.jpg",
"271.jpg",
"272.jpg",
"279.jpg",
"280.jpg",
"294.jpg",
"3.14300033203_84ebb1485b_b.jpg",
"3.open-sewer-manhole-warning-tubes-31339503.jpg",
"303.jpg",
"306.jpg",
"325.jpg",
"33.jpg",
"333.jpg",
"347.jpg",
"35.jpg",
"351.jpg",
"359.jpg",
"360.jpg",
"362.jpg",
"365.jpg",
"398.jpg",
"408.jpg",
"434.jpg",
"436.jpg",
"454.jpg",
"455.jpg",
"456.jpg",
"457.jpg",
"468.jpg",
"478.jpg",
"495.jpg",
"497.jpg",
"50.jpg",
"509.jpg",
"521.jpg",
"537.jpg",
"56044032.jpg",
"57.jpg",
"64.jpg",
"78.jpg",
"8.jpg",
"80.jpg",
"89.jpg",
"9.jpg",
"90.jpg",
"download (11).jpg",
"download (13).jpg",
"download (14).jpg",
"download (9).jpg",
"gettyimages-1057570578-612x612.jpg",
"gettyimages-1057570582-612x612.jpg",
"gettyimages-1137507585-612x612.jpg",
"gettyimages-1182240700-612x612.jpg",
"gettyimages-1230846778-612x612.jpg",
"gettyimages-1302865673-612x612.jpg",
"gettyimages-157480368-612x612.jpg",
"gettyimages-157581526-612x612.jpg",
"gettyimages-157581528-612x612.jpg",
"gettyimages-157581553-612x612.jpg",
"gettyimages-161063542-612x612.jpg",
"gettyimages-161063544-612x612.jpg",
"gettyimages-162074646-612x612.jpg",
"gettyimages-165967579-612x612.jpg",
"gettyimages-174616512-612x612.jpg",
"gettyimages-184310810-612x612.jpg",
"gettyimages-467191179-612x612.jpg",
"gettyimages-511942536-612x612.jpg",
"gettyimages-525399097-612x612.jpg",
"gettyimages-556937283-612x612.jpg",
"gettyimages-620902406-612x612.jpg",
"gettyimages-635932091-612x612.jpg",
"gettyimages-681981659-612x612.jpg",
"gettyimages-72616859-612x612.jpg",
"images (11).jpg",
"images (13).jpg",
"images (16).jpg",
"images (18).jpg",
"images (19).jpg",
"images (20).jpg",
"manhole-cover-smart-city-maintenance.jpg"
];
    improperFiles = ["0000001.jpg",
"00001.jpg",
"105.jpg",
"106.jpg",
"111.jpg",
"113.jpg",
"118.jpg",
"121.jpg",
"125.jpg",
"126.jpg",
"128.jpg",
"143.jpg",
"144.jpg",
"149.jpg",
"153.jpg",
"155.jpg",
"156.jpg",
"157.jpg",
"163.jpg",
"166.jpg",
"169.jpg",
"171.jpg",
"172.jpg",
"176.jpg",
"183.jpg",
"184.jpg",
"192.jpg",
"194.jpg",
"195.jpg",
"206.jpg",
"207.jpg",
"208.jpg",
"209.jpg",
"214.jpg",
"216.jpg",
"223.jpg",
"232.jpg",
"237.jpg",
"243.jpg",
"246.jpg",
"250.jpg",
"254.jpg",
"255.jpg",
"256.jpg",
"259.jpg",
"265.jpg",
"269.jpg",
"27.jpg",
"274.jpg",
"275.jpg",
"284.jpg",
"29.jpg",
"290.jpg",
"292.jpg",
"293.jpg",
"295.jpg",
"30.jpg",
"316.jpg",
"322.jpg",
"342f2.jpg",
"350.jpg",
"353.jpg",
"355.jpg",
"356.jpg",
"357.jpg",
"378.jpg",
"38.jpg",
"381.jpg",
"382.jpg",
"386.jpg",
"392.jpg",
"393.jpg",
"396.jpg",
"399.jpg",
"4.road7-sm.jpg",
"400.jpg",
"401.jpg",
"417.jpg",
"418.jpg",
"428.jpg",
"431.jpg",
"437.jpg",
"451.jpg",
"475.jpg",
"488.jpg",
"490.jpg",
"496.jpg",
"498.jpg",
"501.jpg",
"511.jpg",
"513.jpg",
"515.jpg",
"520.jpg",
"527.jpg",
"533.jpg",
"536.jpg",
"538.jpg",
"540.jpg",
"541.jpg",
"542.jpg",
"544.jpg",
"548.jpg",
"549.jpg",
"6.jpg",
"65.jpg",
"73.jpg",
"74.jpg",
"93.jpg",
"95.jpg",
"download (1).jpg",
"download (2).jpg",
"download (3).jpg",
"download (6).jpg",
"download (8).jpg",
"download.jpg",
"gettyimages-109125875-612x612.jpg",
"gettyimages-1091451114-612x612.jpg",
"gettyimages-110568741-612x612.jpg",
"gettyimages-1144971476-612x612.jpg",
"gettyimages-116849702-612x612.jpg",
"gettyimages-1189531330-612x612.jpg",
"gettyimages-1209826151-612x612.jpg",
"gettyimages-1220245237-612x612.jpg",
"gettyimages-1225881252-612x612.jpg",
"gettyimages-1225881253-612x612.jpg",
"gettyimages-1228288753-612x612.jpg",
"gettyimages-137231438-612x612.jpg",
"gettyimages-142003517-612x612.jpg",
"gettyimages-155798853-612x612.jpg",
"gettyimages-155798865-612x612.jpg",
"gettyimages-170864392-612x612.jpg",
"gettyimages-175869173-612x612.jpg",
"gettyimages-184990310-612x612.jpg",
"gettyimages-200549675-005-612x612.jpg",
"gettyimages-458922161-612x612.jpg",
"gettyimages-458957403-612x612.jpg",
"gettyimages-461171795-612x612.jpg",
"gettyimages-477232055-612x612.jpg",
"gettyimages-497381063-612x612.jpg",
"gettyimages-510429631-612x612.jpg",
"gettyimages-515041941-612x612.jpg",
"gettyimages-515827927-612x612.jpg",
"gettyimages-538842003-612x612.jpg",
"gettyimages-544212693-612x612.jpg",
"gettyimages-544579977-612x612.jpg",
"gettyimages-547449557-612x612.jpg",
"gettyimages-571249721-612x612.jpg",
"gettyimages-573903941-612x612.jpg",
"gettyimages-577137751-612x612.jpg",
"gettyimages-579017807-612x612.jpg",
"gettyimages-587193743-612x612.jpg",
"gettyimages-590470690-612x612.jpg",
"gettyimages-595423927-612x612.jpg",
"gettyimages-595510819-612x612.jpg",
"gettyimages-607837949-612x612.jpg",
"gettyimages-617296782-612x612.jpg",
"gettyimages-617296786-612x612.jpg",
"gettyimages-635105409-612x612.jpg",
"gettyimages-645492469-612x612.jpg",
"gettyimages-649149839-612x612.jpg",
"gettyimages-649161303-612x612.jpg",
"gettyimages-665697859-612x612.jpg",
"gettyimages-668793701-612x612.jpg",
"gettyimages-678390449-612x612.jpg",
"gettyimages-678439865-612x612.jpg",
"gettyimages-678456657-612x612.jpg",
"gettyimages-681970145-612x612.jpg",
"gettyimages-707553615-612x612.jpg",
"gettyimages-713865759-612x612.jpg",
"gettyimages-73270588-612x612.jpg",
"gettyimages-767986049-612x612.jpg",
"gettyimages-79347530-612x612.jpg",
"gettyimages-93002894-612x612.jpg",
"gettyimages-940681960-612x612.jpg",
"gettyimages-960756862-612x612.jpg",
"gettyimages-97297434-612x612.jpg",
"gettyimages-973980116-612x612.jpg",
"gettyimages-975236482-612x612.jpg",
"images (1).jpg",
"images (12).jpg",
"images (14).jpg",
"images (15).jpg",
"images (2).jpg",
"images (3).jpg",
"images (8).jpg",
"images.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000034.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000081.jpg",
"train_full_image_Candelaria_-_Bairro-centro.MP4_frames_frame_000182.jpg",
"train_full_image_Raquel_de_Queiroz_1_-_Bairro-centro.MP4_frames_frame_000081.jpg",
"train_full_image_Rua_Manoel_Joaquim_de_Moraes_-_Bairro-centro._Parte_1.MP4_frames_frame_000182.jpg",
"val_full_image_Av._Jose_Nogueira_Vieira_-_Centro_bairro_3.MP4_frames_frame_000150.jpg",
"val_full_image_Av._Tres_Barras_-_Bairro_centro_1.MP4_frames_frame_000095.jpg",
"val_full_image_Av._Tres_Barras_-_Centro_bairro_3.MP4_frames_frame_000154.jpg"];

	srcDir='D:\Project_2-2\RSIP_project\New_Paper_VIT\dataset\obj_classes\';
	destDir='D:\Project_2-2\RSIP_project\New_Paper_VIT\dataset\processed\';

    for i=1:length(closedFiles)
	    fileName=strcat('closed_manhole\',closedFiles(i));
		srcFileName=strcat(srcDir,fileName);
		destFileName=strcat(destDir,fileName);
		processEllipse(srcFileName,destFileName);
	end
	
	for i=1:length(openFiles)
		fileName=strcat('open_manhole\',openFiles(i));
		srcFileName=strcat(srcDir,fileName);
		destFileName=strcat(destDir,fileName);
		processEllipse(srcFileName,destFileName);
    end

    for i=1:length(improperFiles)
		fileName=strcat('improperly_closed_manhole\',improperFiles(i));
		srcFileName=strcat(srcDir,fileName);
		destFileName=strcat(destDir,fileName);
		processEllipse(srcFileName,destFileName);
	end
	
end