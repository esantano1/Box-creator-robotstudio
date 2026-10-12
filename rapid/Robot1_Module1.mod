MODULE Module1
    VAR robtarget Target_200:=[[210.757790988,207.413195108,129.957625921],[0.005790718,-0.62348087,0.781794377,0.005968638],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget Target_210:=[[150.757891542,-122.58663482,159.957990294],[0.005790676,-0.623480897,0.781794356,0.005968567],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget Target_220:=[[14.494658824,-281.291246085,402.487957916],[0.256676226,-0.656894865,0.662585334,-0.252164878],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget Target_230:=[[145.757881605,-202.586746931,156.958019583],[0.005790665,-0.623480846,0.781794397,0.005968588],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Erika Santano Martín
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
!        TPWrite "hola";
!        TPReadNum reg1, "introduce un numero";
        
        WHILE TRUE DO
            IF SmallCubeConveyor1 = 1 AND Cube1Table = 0 THEN
                SmallBox1;
                !MoveBox Offs(target_10,0,0,100);
            ELSEIF BigCubeConveyor1 = 1 AND FullConveyor2 = 0 THEN
                BigBoxOG;
                !MoveBox Offs(target_10,0,0,100);
            ELSEIF SmallCubeConveyor1 = 1 AND Cube1Table = 1 AND FullConveyor2 = 0 THEN
                Glue;
                SmallBox2CreateNewBig;
            ENDIF
            WaitTime 0.5;
        ENDWHILE
    ENDPROC
    
    PROC MoveBox(robtarget p_pick, robtarget p_place, PERS wobjdata wobj_drop)
        
    ENDPROC
    
    PROC SmallBox1()
        Reset Vacuum;
        MoveJ Offs(Target_200,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveL Target_200,v100,fine,VacuumTool\WObj:=Conveyor1;
        WaitTime 1;
        SetDO Vacuum,1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_230,0,630,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,150,0,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,150,0,10),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_230,150,0,0),v100,fine,VacuumTool\WObj:=WorkingTableRob1;
        WaitTime 1;
        SetDO Vacuum,0;
        MoveJ Offs(Target_230,150,0,10),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,150,0,213),v800,fine,VacuumTool\WObj:=WorkingTableRob1;

    ENDPROC
    PROC BigBoxOG()
        Reset Vacuum;
        MoveJ Offs(Target_200,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveL Target_200,v100,fine,VacuumTool\WObj:=Conveyor1;
        WaitTime 1;
        SetDO Vacuum,1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_210,0,450,220),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveL Target_210,v100,fine,VacuumTool\WObj:=Conveyor2;
        SetDO Vacuum,0;
        MoveJ Offs(Target_210,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_200,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor1;
        MoveL Target_220,v1000,z100,VacuumTool\WObj:=WorkingTableRob1;
        MoveL Target_230,v1000,z100,VacuumTool\WObj:=WorkingTableRob1;
    ENDPROC
    PROC SmallBox2CreateNewBig()
        Reset Vacuum;
        Reset Erase;
        Reset Create;
        MoveJ Offs(Target_200,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveL Target_200,v100,fine,VacuumTool\WObj:=Conveyor1;
        WaitTime 1;
        SetDO Vacuum,1;
        MoveJ Offs(Target_200,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_200,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_230,0,630,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,10),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_230,0,0,0),v100,fine,VacuumTool\WObj:=WorkingTableRob1;
        WaitTime 1;
        SetDO Vacuum,0;
        MoveJ Offs(Target_230,0,0,10),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,213),v800,fine,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Target_220,v800,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,247,76,-249),v300,z100,PenTool\WObj:=WorkingTableRob1;
        SetDO Erase,1;
        WaitTime 1;
        SetDO Erase,0;
        MoveL Offs(Target_220,97,76,-249),v300,z100,PenTool\WObj:=WorkingTableRob1;
        SetDO Erase,1;
        WaitTime 1;
        SetDO Erase,0;
        MoveJ Target_220,v800,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_230,0,0,213),v800,fine,VacuumTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_230,0,0,10),v300,fine,VacuumTool\WObj:=WorkingTableRob1;
        SetDO Create,1;
        SetDO Create,0;
        WaitTime 1;
        MoveL Target_230,v100,fine,VacuumTool\WObj:=WorkingTableRob1;
        WaitTime 1;
        SetDO Vacuum,1;
        MoveJ Offs(Target_230,0,0,10),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,0,213),v300,fine,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_230,0,630,213),v300,z10,VacuumTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_200,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor1;
        MoveJ Offs(Target_210,0,450,220),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,220),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveL Target_210,v100,fine,VacuumTool\WObj:=Conveyor2;
        SetDO Vacuum,0;
        MoveJ Offs(Target_210,0,0,10),v300,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_210,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor2;
        MoveJ Offs(Target_200,0,0,220),v800,z10,VacuumTool\WObj:=Conveyor1;
    ENDPROC
    PROC Glue()
        MoveJ Target_220,v800,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,160,151,-256),v300,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,170,151,-256),v100,fine,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,140,-256),v100,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,12,-256),v300,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,170,1,-256),v100,fine,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,1,-266),v100,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,1,-395),v300,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,170,1,-405),v100,fine,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,15,-405),v100,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,140,-405),v300,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,170,151,-405),v100,fine,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,151,-395),v100,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,170,151,-270),v300,z10,PenTool\WObj:=WorkingTableRob1;
        MoveL Offs(Target_220,170,151,-256),v100,fine,PenTool\WObj:=WorkingTableRob1;
        MoveJ Offs(Target_220,160,151,-256),v100,z10,PenTool\WObj:=WorkingTableRob1;
        MoveJ Target_220,v800,z10,PenTool\WObj:=WorkingTableRob1;
    ENDPROC
ENDMODULE