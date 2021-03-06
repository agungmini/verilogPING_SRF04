add wave -binary clk
add wave -binary en
add wave -binary echoin
add wave -binary trig
add wave -unsigned distVal
add wave -binary ones
add wave -binary tens
add wave -binary hundreds
add wave -binary thausands
add wave -binary buzz

force clk 0 0,1 10ns -repeat 20ns
force en 0
force echoin 0
run 500ms

force en 0
force echoin 1
run 2ms

force en 0
force echoin 0
run 500ms

force en 1
force echoin 0
run 500ms

force en 1
force echoin 1
run 3ms

force en 1
force echoin 0
run 500ms