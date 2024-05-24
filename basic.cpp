#include<iostream>
#include<chrono>
#include<windows.h>
#include<stdio.h>
#include<tchar.h>
#include<psapi.h>

using namespace std;
class TimeStamp{
private:
    chrono::time_point<std::chrono::system_clock> now;
	chrono::system_clock::duration  time_since_epoch; 
	long long millis;
public:
    long long ts(){
		now = chrono::system_clock::now();
        time_since_epoch = now.time_since_epoch();
        millis =chrono::duration_cast<chrono::milliseconds>(time_since_epoch).count();
    	return millis;
    }
};
class Unknow{
public:
    void PrintProcessNameAndID(DWORD processID){
		TCHAR szProcessName[MAX_PATH]=TEXT("<unknown>");
		//GET a handle to process.
		HANDLE hProcess = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, processID);
		//GET the process Name.
		if(NULL!=hProcess){
			HMODULE hMod;
			DWORD cbNeeded;
			if (EnumProcessModules(hProcess,&hMod,sizeof(hMod),&cbNeeded)){
				GetModuleBaseName(hProcess,hMod,szProcessName,sizeof(szProcessName)/sizeof(TCHAR));
			}
		}
		//print the process name and identifier.
		_tprintf(TEXT("%s (PID:%lu)\n"),szProcessName,processID);
		//release the handle to the process
		CloseHandle(hProcess);
	}
};
int main(){
	TimeStamp ts;
	//Unknow obj;
	cout<<ts.ts()<<endl;

    //checking the process extractor
	DWORD aProcesses[1024],cbNeeded,cProcesses;
	unsigned int i;
	if(!EnumProcesses(aProcesses,sizeof(aProcesses),&cbNeeded)){
		return 1;
	}
	//Calculate how many process identifiers were returned.
	cProcesses=cbNeeded/sizeof(DWORD);
	//print the name and process identifier for each process.

	for(i=0;i<cProcesses;i++){
		if(aProcesses[i]!=0){
			cout<<"found process \t"<<aProcesses[i]<<endl;
			//obj.PrintProcessNameAndID(aProcesses[i]);
		}
	}
    return 0;
}	
