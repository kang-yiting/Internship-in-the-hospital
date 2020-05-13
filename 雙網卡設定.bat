REM 1.刪除兩個0.0.0.0 mask 0.0.0.0的route rule。(因為有兩張網路卡，所以會有兩個) 
REM route delete 0.0.0.0

REM 2.將所有IP位址設定經由無線網路卡連線
route delete 0.0.0.0
route add -p 0.0.0.0 mask 0.0.0.0 192.168.139.254 metric 25
route add -p 0.0.0.0 mask 0.0.0.0 10.2.143.254    metric 20


REM 3.將區域網路的IP位址設定經由區域網路卡連線
REM route add -p 10.0.0.0 mask 255.0.0.0 10.2.5.254 metric 1
REM route add -p 10.0.0.0 mask 255.0.0.0 192.168.139.254 metric 1

route delete 10.0.0.0
route add -p 10.0.0.0 mask 255.0.0.0 192.168.2.1 metric 1

