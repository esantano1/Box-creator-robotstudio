MODULE Module1
        CONST robtarget Target_40:=[[225.926999587,250.00018457,173.274009179],[0.004012377,-0.681355124,-0.73193247,-0.003735801],[0,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[341.121865256,-222.072099926,183.274020314],[0.004012477,-0.681355112,-0.731932481,-0.003735738],[-1,2,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[-249.999779829,189.400279612,160.382368135],[0.731932651,0.003735429,0.004012347,-0.681354931],[-1,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        take_oc2;
        take_ot2;
    ENDPROC

    PROC take_oc2()
        MoveL Target_30,v1000,z100,VacumTool\WObj:=conveyor2;
        MoveL Target_40,v1000,z100,VacumTool\WObj:=table2;
    ENDPROC
    PROC take_ot2()
        MoveL Target_40,v1000,z100,VacumTool\WObj:=table2;
        MoveL Target_50,v1000,z100,VacumTool\WObj:=conveyor3;
    ENDPROC
ENDMODULE