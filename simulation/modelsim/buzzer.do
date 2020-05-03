add wave -binary clk
add wave -binary state
add wave -binary en
add wave -binary buzz

force clk 0 0,1 5us -repeat 10us
force state 0
force en 10#0
run 500us

force en 10#1
run 500us

force en 10#2
run 500us

force en 10#3
run 500us

force state 1

force en 10#1
run 500us

force en 10#2
run 500us

force en 10#3
run 500us
