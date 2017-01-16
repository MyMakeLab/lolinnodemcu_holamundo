--pins de NodeMcu 
a={0,1,2}
--
c=0

function declararSalidas()
    for i=1,3 do
        gpio.mode(a[i],gpio.OUTPUT)
    end 
end

function apagar()
    for i=1,3 do
        gpio.write(a[i],gpio.LOW)
    end 
end

function prender()
    for i=1,3 do
        gpio.write(a[i],gpio.HIGH)
    end 
end

declararSalidas()
while c<10 do
    apagar()
    tmr.delay(1000000)
    prender()
    c=c+1
    tmr.delay(1000000)
end 

