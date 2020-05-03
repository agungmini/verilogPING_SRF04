add wave -binary clkin
add wave -binary en
add wave -binary pulse

force clkin 0 0,1 5us -repeat 10us
force en 0
run 300ms

force en 1
run 800ms