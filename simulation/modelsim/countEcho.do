add wave -binary clk
add wave -binary echoin
add wave -unsigned latch
add wave -binary mode

force clk 0 0,1 5us -repeat 10us
force echoin 0
run 10ms

force echoin 1
run 10ms

force echoin 0
run 10ms

force echoin 1
run 36ms

force echoin 0
run 10ms

force echoin 1
run 500ms

force echoin 0
run 100ms