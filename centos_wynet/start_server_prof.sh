LD_LIBRARY_PATH=/usr/local/lib && export LD_LIBRARY_PATH
cd server
LD_PRELOAD=/usr/lib/libprofiler.so CPUPROFILE=./server.prof ../github/wynet/build/bench_server localhost 9999 3
pprof --svg ../github/wynet/build/bench_server server.prof > server.svg      