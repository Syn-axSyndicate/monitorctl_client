#include<iostream>
#include<chrono>
using namespace std;
class TimeStamp{
public:
    long long ts(){
	    chrono::time_point<std::chrono::system_clock> now = chrono::system_clock::now();
        chrono::system_clock::duration  time_since_epoch = now.time_since_epoch();
        long long millis =chrono::duration_cast<chrono::milliseconds>(time_since_epoch).count();
    	return millis;
    }
};

class JsonParser{
private:
	
};
int main(){
	TimeStamp ts;
	cout<<ts.ts()<<endl;
    return 0;
}	