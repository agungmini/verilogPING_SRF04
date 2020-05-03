add wave -binary clkin
add wave -binary clkout

force clkin 0 0,1 10ns -repeat 20ns
run 500us