library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comparator  is

PORT    ( a,b,sel : in std_logic :='0' ;
               gr,ls,eq : out std_logic);

end comparator;

Architecture behavioral of comparator is

Begin

process(a,b,sel)

begin
        if(sel ='1') then
                
              if (a>b) then
                   gr<='1';
              
             elsif (b>a) then
                   ls<='1';
            
               else
                   eq<='1';
           
               end if;
           
       else
      end if;

end Process;
end behavioral;