LD_LIBRARY_PATH=/usr/local/lib && export LD_LIBRARY_PATH
cd client
LD_PRELOAD=/usr/lib/libprofiler.so CPUPROFILE=./client.prof ../github/wynet/build/bench_client localhost 9999 3 16384 10000 120
pprof --svg ../github/wynet/build/bench_client client.prof > client.svg      