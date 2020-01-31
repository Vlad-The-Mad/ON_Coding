// @author : ian cain
// @date   : 2018
// @b      : Coding challenge for interview candidates to show ability to use and synchronize threads
//

#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <chrono>

using namespace std;

bool done = false;
condition_variable cv;
std::mutex muta;
string synched = "0";

void worker(string id)
{
	//we want to keep doing stuff until ctrl-c, so all of the code needs to be looped
	while( !done ) {
		//set up mutex locking and wait until given thread control
		cout << "Waiting until release - id" << id << endl;
		synched = id.substr(0,1);
		unique_lock<std::mutex>lockee(muta);
		//sometimes the threads hang on a cv.wait.  This bypasses the hang...
		//however it does often result in out-of-order execution
		cv.wait_for(lockee,std::chrono::seconds(2));
		auto start = chrono::high_resolution_clock::now();
		cout << "starting work - id: " << id << endl;
		// c++11 timers, chrono::high_resolution_clock
		auto end = chrono::high_resolution_clock::now();
		chrono::duration<double, milli> elapsed = end-start;
		// notify next waiting thread using condition_variable
		cout << "done - id: " << id << ", worked: " << elapsed.count() << " ms\n";;
		lockee.unlock();
		cv.notify_one(); 
	}
}

int main()
{
    // Start 3-4 threads
        cout << "Main starting all threads" << endl;
	std::thread thread1(worker, "1");
        cout << "Main called 1" << endl;
	std::thread thread2(worker, "2");
        cout << "Main called 2" << endl;
	std::thread thread3(worker, "3");
        cout << "Main called 3" << endl;
    // Gain control of the mutex so main can use the conditional variable
    	unique_lock<std::mutex> lockee(muta);	
	string comp = "3";
    // Kick off thread chain using condition variable
	while (synched.compare(comp) != 0) {
		cout << synched.compare(comp) << comp << synched << endl;
	}
        cout << "Main starting thread 1" << endl;
	lockee.unlock();
        cout << "Notified thread 1" << endl;
    // (Only synchronize threads once)
   	cv.notify_one(); 
    // Rejoin Threads to prevent abort
	thread1.join();
	thread2.join();
	thread3.join();
    return 0;
}
