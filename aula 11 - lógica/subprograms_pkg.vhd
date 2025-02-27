------------------------------------------------------------
package subprograms_pkg is
    function ceil_log2 (input: positive) return natural;
end package;

package body subprograms_pkg is
    function ceil_log2 (input: positive) return natural is
        variable result: natural := 0;
    begin
        while 2**result < input loop
            result := result + 1;
        end loop;
        return result;
    end function ceil_log2;
 end package body;  
------------------------------------------------------------