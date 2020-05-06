all:
	c++ local_lat.cpp -o local_thr -Wall -O3 -I./include/ -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -lpthread -std=c++14
	c++ local_thr.cpp -o local_thr -Wall -O3 -I./include/ -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -lpthread -std=c++14
	c++ remote_lat.cpp -o remote_lat  -Wall -O3 -I./include/ -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -lpthread -std=c++14
	c++ remote_thr.cpp -o remote_thr -Wall -O3 -I./include/ -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -lpthread -std=c++14
	c++ tests.cpp -o tests -Wall -O3 -I./include/ -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -lgtest -lpthread -std=c++14

clean:
	rm -rf local_lat local_thr remote_lat remote_thr tests
