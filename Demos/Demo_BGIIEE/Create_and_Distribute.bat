@echo off
REM Never Forget: Comments can "lie", but code not so much ;P
REM ---------------------------
REM Disables the "!" as keyword
REM ---------------------------
REM https://stackoverflow.com/questions/3288552/how-can-i-escape-an-exclamation-mark-in-cmd-scripts
setlocal DISABLEDELAYEDEXPANSION

REM ------------------------
REM INIT Soundset File Names
REM ------------------------
Set soundsetName[0]=!_DEMO
Set soundsetName[1]=!_DEMB
REM --------------
REM INIT Languages
REM --------------
REM (en_US = English, de_DE = German)
Set languages[0]=en_US
Set languages[1]=de_DE
REM --------------------------
REM INIT Soundset Custom Names
REM --------------------------
Set en_US[0]=!_Demo(Complete):Female Robot
Set en_US[1]=!_Demo(Incomplete):Female Robot
Set de_DE[0]=!_Demo(Vollständig):Weiblich Roboter
Set de_DE[1]=!_Demo(Unvollständig):Weiblich Roboter
REM -----------------
REM INIT Folder Paths
REM -----------------
REM https://ss64.com/nt/syntax-args.html
Set MOD_FOLDER="%~dp0"
Set VOX_FOLDER="%~dp0vox\"
REM -------------
REM INIT Counters
REM -------------
Set nameNumbers=0
Set slotNumbers=0
REM --------------
REM INIT Positions
REM --------------
REM ---Baldur's Gate Enhanced Edition & Siege of Dragonspear & Icewind Dale Enhanced Edition
Set positionsListBGEE[0]=6
Set positionsListBGEE[1]=7
Set positionsListBGEE[2]=8
Set positionsListBGEE[3]=9
Set positionsListBGEE[4]=10
Set positionsListBGEE[5]=11
Set positionsListBGEE[6]=12
Set positionsListBGEE[7]=13
Set positionsListBGEE[8]=18
Set positionsListBGEE[9]=19
Set positionsListBGEE[10]=20
Set positionsListBGEE[11]=21
Set positionsListBGEE[12]=22
Set positionsListBGEE[13]=23
Set positionsListBGEE[14]=24
Set positionsListBGEE[15]=25 
Set positionsListBGEE[16]=26
Set positionsListBGEE[17]=27
Set positionsListBGEE[18]=28
Set positionsListBGEE[19]=29
Set positionsListBGEE[20]=30
Set positionsListBGEE[21]=31
Set positionsListBGEE[22]=32
Set positionsListBGEE[23]=33
Set positionsListBGEE[24]=34
Set positionsListBGEE[25]=35
Set positionsListBGEE[26]=36
Set positionsListBGEE[27]=37
Set positionsListBGEE[28]=38
Set positionsListBGEE[29]=53
Set positionsListBGEE[30]=65
Set positionsListBGEE[31]=66
Set positionsListBGEE[32]=67
Set positionsListBGEE[33]=68
Set positionsListBGEE[34]=69
Set positionsListBGEE[35]=70
Set positionsListBGEE[36]=71
Set positionsListBGEE[37]=72
Set positionsListBGEE[38]=79
Set positionsListBGEE[39]=80
Set positionsListBGEE[40]=81
Set positionsListBGEE[41]=82 
REM ---Baldur's Gate II Enhanced Edition
Set positionsListBGIIEE[0]=6
Set positionsListBGIIEE[1]=7
Set positionsListBGIIEE[2]=8
Set positionsListBGIIEE[3]=9
Set positionsListBGIIEE[4]=10
Set positionsListBGIIEE[5]=11
Set positionsListBGIIEE[6]=12
Set positionsListBGIIEE[7]=13
Set positionsListBGIIEE[8]=18
Set positionsListBGIIEE[9]=19
Set positionsListBGIIEE[10]=20
Set positionsListBGIIEE[11]=21
Set positionsListBGIIEE[12]=22
Set positionsListBGIIEE[13]=23
Set positionsListBGIIEE[14]=24
Set positionsListBGIIEE[15]=25 
Set positionsListBGIIEE[16]=26
Set positionsListBGIIEE[17]=27
Set positionsListBGIIEE[18]=28
Set positionsListBGIIEE[19]=29
Set positionsListBGIIEE[20]=30
Set positionsListBGIIEE[21]=31
Set positionsListBGIIEE[22]=32
Set positionsListBGIIEE[23]=33
Set positionsListBGIIEE[24]=34
Set positionsListBGIIEE[25]=35
Set positionsListBGIIEE[26]=36
Set positionsListBGIIEE[27]=37
Set positionsListBGIIEE[28]=38
Set positionsListBGIIEE[29]=53
Set positionsListBGIIEE[30]=65
Set positionsListBGIIEE[31]=66
Set positionsListBGIIEE[32]=67
Set positionsListBGIIEE[33]=68
Set positionsListBGIIEE[34]=69
Set positionsListBGIIEE[35]=70
Set positionsListBGIIEE[36]=71
Set positionsListBGIIEE[37]=72
Set positionsListBGIIEE[38]=75
Set positionsListBGIIEE[39]=76
Set positionsListBGIIEE[40]=77
Set positionsListBGIIEE[41]=78
REM -------------------
REM INIT Comments en_US
REM -------------------
Set commentsListen_US[b]=Becoming Leader
Set commentsListen_US[c]=Tired
Set commentsListen_US[d]=Bored
Set commentsListen_US[a]=Battle Cry 1
Set commentsListen_US[8]=Battle Cry 2
Set commentsListen_US[9]=Battle Cry 3
Set commentsListen_US[g_]=Battle Cry 4
Set commentsListen_US[h_]=Battle Cry 5
Set commentsListen_US[l]=Beeing Hit
Set commentsListen_US[m]=Dying
Set commentsListen_US[e]=Badly Wounded
Set commentsListen_US[n]=In Forest
Set commentsListen_US[o]=In City
Set commentsListen_US[p]=In Dungeon
Set commentsListen_US[q]=Daytime
Set commentsListen_US[r]=Nighttime
Set commentsListen_US[f]=Selected 1
Set commentsListen_US[g]=Selected 2
Set commentsListen_US[h]=Selected 3
Set commentsListen_US[0]=Selected 4
Set commentsListen_US[k_]=Selected 5
Set commentsListen_US[l_]=Selected 6
Set commentsListen_US[i]=Action Acknowledgement 1
Set commentsListen_US[j]=Action Acknowledgement 2
Set commentsListen_US[k]=Action Acknowledgement 3
Set commentsListen_US[0_]=Action Acknowledgement 4 for SoD/BGEE/IWDEE or else BGEE2 Select Rare 1
Set commentsListen_US[1_]=Action Acknowledgement 5 for SoD/BGEE/IWDEE or else BGEE2 Select Rare 2
Set commentsListen_US[2_]=Action Acknowledgement 6 for SoD/BGEE/IWDEE or else BGEE2 Select Rare 3
Set commentsListen_US[3_]=Action Acknowledgement 7 for SoD/BGEE/IWDEE or else BGEE2 Select Rare 4
Set commentsListen_US[w]=Reaction to Party Member Death
Set commentsListen_US[z]=Critical Hit
Set commentsListen_US[1]=Critical Miss
Set commentsListen_US[2]=Target Immune
Set commentsListen_US[3]=Inventory Full
Set commentsListen_US[4]=Picked Pocked
Set commentsListen_US[5]=Hidden in Shadow
Set commentsListen_US[6]=Spell Disrupted
Set commentsListen_US[7]=Set a Trap
Set commentsListen_US[s]=BGEE[IWDEE] Action Acknowledgement 4 or Action Acknowledgement 4 for BGEE2
Set commentsListen_US[t]=BGEE[IWDEE] Action Acknowledgement 5 or Action Acknowledgement 5 for BGEE2
Set commentsListen_US[u]=BGEE[IWDEE] Action Acknowledgement 6 or Action Acknowledgement 6 for BGEE2
Set commentsListen_US[v]=BGEE[IWDEE] Action Acknowledgement 7 or Action Acknowledgement 7 for BGEE2
REM -------------------
REM INIT Comments de_DE
REM -------------------
Set commentsListde_DE[b]=Anführer werden
Set commentsListde_DE[c]=Müde
Set commentsListde_DE[d]=Gelangweilt
Set commentsListde_DE[a]=Schlachtruf 1
Set commentsListde_DE[8]=Schlachtruf 2
Set commentsListde_DE[9]=Schlachtruf 3
Set commentsListde_DE[g_]=Schlachtruf 4
Set commentsListde_DE[h_]=Schlachtruf 5
Set commentsListde_DE[l]=Getroffen werden
Set commentsListde_DE[m]=Sterben
Set commentsListde_DE[e]=Schwer verwundet
Set commentsListde_DE[n]=Im Wald
Set commentsListde_DE[o]=In der Stadt
Set commentsListde_DE[p]=Im Kerker
Set commentsListde_DE[q]=Tagsüber
Set commentsListde_DE[r]=Nachts
Set commentsListde_DE[f]=Ausgewählt 1
Set commentsListde_DE[g]=Ausgewählt 2
Set commentsListde_DE[h]=Ausgewählt 3
Set commentsListde_DE[0]=Ausgewählt 4
Set commentsListde_DE[k_]=Ausgewählt 5
Set commentsListde_DE[l_]=Ausgewählt 6
Set commentsListde_DE[i]=Aktionsbestätigung 1
Set commentsListde_DE[j]=Aktionsbestätigung 2
Set commentsListde_DE[k]=Aktionsbestätigung 3
Set commentsListde_DE[0_]=Aktionsbestätigung 4 für SoD/BGEE/IWDEE ansonsten BGEE2 Aktionsbestätigung selten 1
Set commentsListde_DE[1_]=Aktionsbestätigung 5 für SoD/BGEE/IWDEE ansonsten BGEE2 Aktionsbestätigung selten 2
Set commentsListde_DE[2_]=Aktionsbestätigung 6 für SoD/BGEE/IWDEE ansonsten BGEE2 Aktionsbestätigung selten 3
Set commentsListde_DE[3_]=Aktionsbestätigung 7 für SoD/BGEE/IWDEE ansonsten BGEE2 Aktionsbestätigung selten 4
Set commentsListde_DE[w]=Reaktion auf den Tod eines Gruppenmitglieds
Set commentsListde_DE[z]=Kritischer Treffer
Set commentsListde_DE[1]=Kritischer Fehlschlag
Set commentsListde_DE[2]=Ziel ist immun
Set commentsListde_DE[3]=Inventar voll
Set commentsListde_DE[4]=Taschendiebstahl
Set commentsListde_DE[5]=Versteckt im Schaten
Set commentsListde_DE[6]=Zauber unterbrochen
Set commentsListde_DE[7]=Falle stellen
Set commentsListde_DE[s]=BGEE[IWDEE] Aktionsbestätigung 4 oder Aktionsbestätigung 4 für BGEE2
Set commentsListde_DE[t]=BGEE[IWDEE] Aktionsbestätigung 5 oder Aktionsbestätigung 5 für BGEE2
Set commentsListde_DE[u]=BGEE[IWDEE] Aktionsbestätigung 6 oder Aktionsbestätigung 6 für BGEE2
Set commentsListde_DE[v]=BGEE[IWDEE] Aktionsbestätigung 7 oder Aktionsbestätigung 7 für BGEE2
REM --------------
REM INIT LAM Names
REM --------------
Set texts=!_Texts
Set voxNames=!_VoxNames
Set voxSelectNames=!_VoxSelectNames
Set sounds=!_Sounds
Set positions=!_Positions


REM ---------------------
REM Main Loop (Languages)
REM ---------------------
REM https://stackoverflow.com/questions/18462169/how-to-loop-through-array-in-batch
for /F "tokens=2 delims==" %%l in ('Set languages[') do ( 
	echo -----------------------------
	echo Preparing files for language: %%l
	echo -----------------------------
	REM https://ss64.com/nt/delayedexpansion.html
	Setlocal ENABLEDELAYEDEXPANSION
	
	REM -----------------------------
	REM Counts Custome Names for Loop
	REM -----------------------------
	Set countedCustomNames=0
	for /F "tokens=2 delims==" %%t in ('Set %%l[') do ( 
		
		Set /a countedCustomNames+=1
	)
	Set /a countedCustomNames-=1
	
	REM --------------------------------
	REM Changes path to read sound files
	REM --------------------------------
	REM https://ss64.com/nt/dir.html; bare(/b) file sorted by name(/o:n)
	cd "%VOX_FOLDER%\%%l"
	set countedFiles=0
	Set index=0
	for /f "tokens=*" %%s in ('dir /b /o:n "*.wav"') do (
		REM "^" allows to get files with "!" in it.
		Set soundsetFiles[!index!]="^%%~s"
		Set /a index+=1
		Set /a countedFiles+=1
	)
	Set soundsetFiles
	Set /a countedFiles-=1

	REM -----------------------------------------------------------
	REM Changes path to create init-file to fill it with WeiDU code
	REM -----------------------------------------------------------
	cd "%MOD_FOLDER%\%%l"
	Copy NUL "InitVoxArrays.tpa"
	REM --------------------------
	REM INITIALIZE DYN ARRAY TEXTS
	REM --------------------------
	Set index=0
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY TEXTS
	for /L %%i in (0,1,!countedFiles!) do ( 
	
		Set sfname=!soundsetFiles[%%i]!
		
		Set /a count=0
		for %%g IN (b c d a 8 9 g_ h_ l m e n o p q r f g h 0 k_ l_ i j k 0_ 1_ 2_ 3_ w z 1 2 3 4 5 6 7 s t u v) DO (
			
			if /i "%%g"=="!sfname:~-6,-5!" (
				>>InitVoxArrays.tpa echo OUTER_SPRINT ~Texts!index!~ ~TODO~ //!sfname! !commentsList%%l[%%g]!

			) else if /i "%%g"=="!sfname:~-7,-5!" (
				>>InitVoxArrays.tpa echo OUTER_SPRINT ~Texts!index!~ ~TODO~ //!sfname! !commentsList%%l[%%g]!
					
			)
				
			Set /a count+=1
		)
		
		Set /a index+=1
	)
	>>InitVoxArrays.tpa echo LAM ~!texts!~
	REM --------------------------
	REM INITIALIZE DYN ARRAY NAMES
	REM --------------------------
	Set index=0
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY NAMES
	for /L %%n in (0,1,!countedCustomNames!) do ( 
		
		Set name=!soundsetName[%%n]!

		>>InitVoxArrays.tpa echo OUTER_SPRINT ~VoxNames!index!~ ~!name!~
		Set /a index+=1
	)
	>>InitVoxArrays.tpa echo LAM ~!voxNames!~
	REM -------------------------------------
	REM INITIALIZE DYN ARRAY SELECTABLE NAMES
	REM -------------------------------------
	Set index=0
	Set array=%%l
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY SELECTABLE NAMES
	for /L %%t in (0,1,!countedCustomNames!) do (  
	
		Set sname=!%%l[%%t]!
		
		>>InitVoxArrays.tpa echo OUTER_SPRINT ~VoxSelectNames!index!~ ~!sname!~
		Set /a index+=1		
	)
	>>InitVoxArrays.tpa echo LAM ~!voxSelectNames!~	
	REM ---------------------------
	REM INITIALIZE DYN ARRAY SOUNDS
	REM ---------------------------
	Set index=0
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY SOUNDS
	for /L %%k in (0,1,!countedFiles!) do ( 

		Set ssname=!soundsetFiles[%%k]!
		
		>>InitVoxArrays.tpa echo OUTER_SPRINT ~Sounds!index!~ ~!ssname:~1,-5!~
		Set /a index+=1
	)
	>>InitVoxArrays.tpa echo LAM ~!sounds!~
	REM ------------------------------
	REM INITIALIZE DYN ARRAY POSITIONS
	REM ------------------------------
	REM --- Baldur's Gate Enhanced Edition & Siege of Dragonspear
	Set index=0
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY POSITIONS
	>>InitVoxArrays.tpa echo ACTION_IF ^(GAME_IS ~bgee~^) OR  ^(FILE_EXISTS ~sod-dlc.zip~^) OR ^(FILE_EXISTS ~dlc/sod-dlc.zip~^) OR ^(GAME_IS ~iwdee~^) THEN 
	>>InitVoxArrays.tpa echo BEGIN
	for /L %%j in (0,1,!countedFiles!) do ( 

		Set sfname=!soundsetFiles[%%j]!
		
		Set /a count=0
		for %%g IN (b c d a 8 9 g_ h_ l m e n o p q r f g h 0 k_ l_ i j k 0_ 1_ 2_ 3_ w z 1 2 3 4 5 6 7 s t u v) DO (
			
			if /i "%%g"=="!sfname:~-6,-5!" (
				
				REM Accesses the array with a loop because “!myArray[%index%]!” The syntax doesn't work here.
				For /L %%u in (!count!,1,!count!) Do (
					>>InitVoxArrays.tpa echo OUTER_SET ~Positions!index!~ = !positionsListBGEE[%%u]!
				)
				
			) else if /i "%%g"=="!sfname:~-7,-5!" (
				
				REM Accesses the array with a loop because “!myArray[%index%]!” The syntax doesn't work here.
				For /L %%u in (!count!,1,!count!) Do (
					>>InitVoxArrays.tpa echo OUTER_SET ~Positions!index!~ = !positionsListBGEE[%%u]!
				)
			)
			Set /a count+=1
		)
		
		Set /a index+=1
	)
	>>InitVoxArrays.tpa echo LAM ~!positions!~
	>>InitVoxArrays.tpa echo END
	
	REM --- Baldur's Gate II Enhanced Edition
	Set index=0
	>>InitVoxArrays.tpa echo // ---INITIALIZE DYN ARRAY POSITIONS
	>>InitVoxArrays.tpa echo ACTION_IF ^(GAME_IS ~bg2ee~^) THEN 
	>>InitVoxArrays.tpa echo BEGIN
	for /L %%j in (0,1,!countedFiles!) do ( 

		Set sfname=!soundsetFiles[%%j]!
		
		Set /a count=0
		for %%g IN (b c d a 8 9 g_ h_ l m e n o p q r f g h 0 k_ l_ i j k s t u v w z 1 2 3 4 5 6 7 0_ 1_ 2_ 3_) DO (
			
			if /i "%%g"=="!sfname:~-6,-5!" (
				
				REM Accesses the array with a loop because “!myArray[%index%]!” The syntax doesn't work here.
				For /L %%u in (!count!,1,!count!) Do (
					>>InitVoxArrays.tpa echo OUTER_SET ~Positions!index!~ = !positionsListBGIIEE[%%u]!
				)
				
			) else if /i "%%g"=="!sfname:~-7,-5!" (
				
				REM Accesses the array with a loop because “!myArray[%index%]!” The syntax doesn't work here.
				For /L %%u in (!count!,1,!count!) Do (
					>>InitVoxArrays.tpa echo OUTER_SET ~Positions!index!~ = !positionsListBGIIEE[%%u]!
				)
			)
			Set /a count+=1
		)
		
		Set /a index+=1
	)
	>>InitVoxArrays.tpa echo LAM ~!positions!~
	>>InitVoxArrays.tpa echo END
	
	
	REM -----------------------------------
	REM Counts the number of soundset names
	REM -----------------------------------
	for /F "tokens=2 delims==" %%n in ('Set soundsetName[') do ( 
		Set /a nameNumbers+=1
	)
	REM -----------------------------------
	REM Counts the number of soundset files
	REM -----------------------------------
	for /F "tokens=2 delims==" %%n in ('Set soundsetFiles[') do ( 
		Set /a slotNumbers+=1 
	)	
	REM --------------------------------------------
	REM Creates init-file to fill it with WeiDU code
	REM --------------------------------------------
	Copy NUL "InitAllSlotNumbers.tpa"
	REM ---------------------------
	REM INITIALIZE ALL SLOT-NUMBERS
	REM ---------------------------
	>>InitAllSlotNumbers.tpa echo // ---INITIALIZE ALL SLOT-NUMBERS	
	>>InitAllSlotNumbers.tpa echo OUTER_SET slotNumbers = !slotNumbers!
	>>InitAllSlotNumbers.tpa echo OUTER_SET nameNumbers = !nameNumbers!
	

	REM -----------------------------
	REM Redistributes all sound files
	REM -----------------------------
	cd "%VOX_FOLDER%\%%l"
	REM https://ss64.com/nt/move.html; https://ss64.com/nt/if.html
	REM https://stackoverflow.com/questions/26391925/in-a-batch-file-how-do-you-verify-part-of-a-filename-matches-a-given-string
	for /F "tokens=2 delims==" %%w in ('Set soundsetFiles[') do ( 
				
		set file="^%%~w"
		set flag=^%%~w
		
		REM Checks the last 5 characters found in file. 
		REM Sound file names with "_" as postfix will be moved in wav-folder, else in sound-folder. 
		if /i "!flag:~-5!"=="_.wav" (
			move /Y ".\!file!" ".\wav\"
		) else (
			move /Y ".\!file!" ".\sound\"
		)
		
	)

	REM Deletes every content of variables within this loop iteration
	endlocal
	
) 
REM End of main loop

PAUSE