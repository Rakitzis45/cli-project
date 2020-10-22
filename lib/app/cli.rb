
class CLI

    def initialize
         puts "NFL Team Checker"
         Scraper.new.first_scrape
        puts"                                          .d.                               "                                        
        puts"                                         ,XkX,                              "         
        puts"                                       .O0,.'OO'                            "          
        puts"                    k;               .c0k;.....;k0c.               ;k.      "           
        puts"                   .MOOkl;..   ..,cxOkc...........ckOxc,..   ..;okOkM.      "             
        puts"                   .M:..,coxkkkxoc;........'loxodx....;loxkkkxoc,..:M.      "             
        puts"                   .M:....,.......;......oXNxdodMMd...;.......,....:M.      "          
        puts"                   .M:..lONd;...lONd:..;NN0ddOKMMMO.;dNOl...;dNOl..:M.      "              
        puts"                   .M:..,KOk....'KOO..'WXxddXMMMMMd..kOK'....xOK,..:M.      "               
        puts"                   .M:................dMK,kXMMMMMK.................:M.      "               
        puts"                   .M:...,x......,k...kW:NMMMMMWx.....x,......x,...:M.      "               
        puts"                   .M:..lWMK;...lWMK:.ckKMMMW0o.....;KMWl...;KMWo..:M.      "               
        puts"                   .M:..,c,l....'c,l...:doc,.........l,c,....c,c,..:M.      "            
        puts"                   .M:..,;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,..:M.      "              
        puts"                   .M:..X0000KWMN000000N0000000000XX000000XMMMMMN..;M.      "               
        puts"                   .M:..Xd,...:WNo'..'dNx'........,0l....cKMMMMMN..:M.      "                
        puts"                   .M:..NMk....oMMk..;MMMc...KXXXk,lM;..'WMMMMMMN..:M.      "                
        puts"                   .M:..NMk.....kMk..;MMMc...NMMMWWWM;..'WMMMMMMN..:M.      "               
        puts"                   .M:..NMk.....'Kk..;MMMc...NMMK'xMM;..'WMMMMMMN..:M.      "                
        puts"                   .M:..NMk..:;..;x..;MMMc...''''.dMM;..'WMNNWMMN..:M.      "                
        puts"                   .M:..NMk..lK'..'..;MMMc...dxxd'dMM;..'0,..'lNN..:M.      "              
        puts"                   .M:..NMk..lMk.....;MMMc...NMMM0XMM;..'k.....;N..:M.      "                 
        puts"                   .M:..NMk..lMMo....;MMMc...NMMMMMMM;..'WKkk:..K..:M.      "                 
        puts"                   .M:..Xx:..lMMWc...;MMMc...XMMMMMMM;..'WMMN,.;N..:M.      "                
        puts"                    Wl..0O;..;NMMN,..;MMMc...XMMMMMMO'...odl'.;X0..cM       "                  
        puts"                    lX'..dNKdlkMMMK;.cMMX;...XMMMMMc.,;:::::oOXd..'Xo       "                  
        puts"                     ;Xd'..,lx0XWMMMWMMMOo;..OMMMMMNWMMMWX0kl;..'dX:        "                    
        puts"                       :kOd:'.....,;ldONMMMXdcWMMNOdc;'.....':dOk:          "                        
        puts"                          .:dkkkkxoc;...'lOWMWOl'...;coxkkkkdc.             "                          
        puts"                                 ..,lxOkc..'l'..:kOxl;..                    "                                 
        puts"                                       .lKx'..xKl.                          "                                      
        puts"                                          ;XxX:                             "                                          
        puts"                                           .d.                              "   
    end

    def run
        puts "What you you like view?"
        puts "1. NFL Standings"
        puts "2. List teams by Conference"
        puts "Enter 1 or 2"
        user_input = gets.chomp
        if user_input == "1"
            NFLTeam.print_teams
            sleep(2)            
                puts ""
                run
        elsif user_input == "2"
            puts "Enter Conference"
            puts "1. National Football Conference Standings"
            puts "2. American Football Conference Standings"
            puts "Enter 1 or 2"
            user_input = gets.chomp
            
            if user_input == "1"                                                                         
            puts    'NNNNNNNN        NNNNNNNN FFFFFFFFFFFFFFFFFFFFFF       CCCCCCCCCCCCC'
            puts    'N:::::::N       N::::::N F::::::::::::::::::::F    CCC::::::::::::C'
            puts    'N::::::::N      N::::::N F::::::::::::::::::::F  CC:::::::::::::::C'
            puts    'N:::::::::N     N::::::N FF::::::FFFFFFFFF::::F C:::::CCCCCCCC::::C'
            puts    'N::::::::::N    N::::::N  F:::::F       FFFFFF C:::::C       CCCCCC'
            puts    'N:::::::::::N   N::::::N  F:::::F             C:::::C              '
            puts    'N:::::::N::::N  N::::::N  F::::::FFFFFFFFFF   C:::::C              '
            puts    'N::::::N N::::N N::::::N  F:::::::::::::::F   C:::::C              '
            puts    'N::::::N  N::::N:::::::N  F:::::::::::::::F   C:::::C              '
            puts    'N::::::N   N:::::::::::N  F::::::FFFFFFFFFF   C:::::C              '
            puts    'N::::::N    N::::::::::N  F:::::F             C:::::C              '
            puts    'N::::::N     N:::::::::N  F:::::F              C:::::C       CCCCCC'
            puts    'N::::::N      N::::::::N FF:::::::FF            C:::::CCCCCCCC::::C'
            puts    'N::::::N       N:::::::N F::::::::FF             CC:::::::::::::::C'
            puts    'N::::::N        N::::::N F::::::::FF               CCC::::::::::::C'
            puts    'NNNNNNNN         NNNNNNN FFFFFFFFFFF                  CCCCCCCCCCCCC'                                
                NFLTeam.print_nfc       
                sleep(2)
                puts ""
                run
            elsif user_input == "2"                                                                
            puts    '                 AAA                FFFFFFFFFFFFFFFFFFFFFF        CCCCCCCCCCCCC'
            puts    '                A:::A               F::::::::::::::::::::F     CCC::::::::::::C'
            puts    '               A:::::A              F::::::::::::::::::::F   CC:::::::::::::::C'
            puts    '              A:::::::A             FF::::::FFFFFFFFF::::F  C:::::CCCCCCCC::::C'
            puts    '             A:::::::::A              F:::::F       FFFFFF C:::::C       CCCCCC'
            puts    '            A:::::A:::::A             F:::::F             C:::::C              '
            puts    '           A:::::A A:::::A            F::::::FFFFFFFFFF   C:::::C              '
            puts    '          A:::::A   A:::::A           F:::::::::::::::F   C:::::C              '
            puts    '         A:::::A     A:::::A          F:::::::::::::::F   C:::::C              '
            puts    '        A:::::AAAAAAAAA:::::A         F::::::FFFFFFFFFF   C:::::C              '
            puts    '       A:::::::::::::::::::::A        F:::::F             C:::::C              '
            puts    '      A:::::AAAAAAAAAAAAA:::::A       F:::::F              C:::::C       CCCCCC'
            puts    '     A:::::A             A:::::A    FF:::::::FF             C:::::CCCCCCCC::::C'
            puts    '    A:::::A               A:::::A   F::::::::FF              CC:::::::::::::::C'
            puts    '   A:::::A                 A:::::A  F::::::::FF                CCC::::::::::::C'
            puts    '  AAAAAAA                   AAAAAAA FFFFFFFFFFF                   CCCCCCCCCCCCC'
                NFLTeam.print_afc 
                sleep(2)
                puts ""
                run
            else
                invalid_input
            end
        else
            invalid_input 
        end
    end  


    def invalid_input
        puts "Invalid Input. Restarting"
        sleep(1)
        run
    end
end