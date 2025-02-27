---------------------------------------------------------
package my_package is
    procedure sort_data (signal in1, in2: in integer;
                         signal out1, out2: out integer);
end my_package;
---------------------------------------------------------
package body my_package is
    procedure sort_data (signal in1, in2: in integer;
                         signal out1, out2: out integer) is
    begin
        if (in1 < in2) then
            out1 <= in1;
            out2 <= in2;
        else
            out1 <= in2;
            out2 <= in1;
        end if;
    end sort_data;
end my_package;
---------------------------------------------------------