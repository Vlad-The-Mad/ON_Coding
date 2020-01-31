#include <iostream>
#include <mutex>
#include <random>
#include <chrono>
#include <thread>
#include <pthread.h>

using namespace std;

bool done = false;

/**********************************************
 * 		lock_guard
 * Takes a thread's mutex.  Locks it until going
 * out of bounds, then unlocks with its
 * destructor.
 *
 **********************************************/

namespace LockGuard {
  class lock_guard {
  public:
	lock_guard(std::mutex * new_muta);  //lock_guard must use a mutex
	~lock_guard();
  private:
	std::mutex * my_muta;
  };
};

LockGuard::lock_guard::lock_guard(std::mutex * new_muta) {
	this->my_muta = new_muta;
        cout << "locking mutex\n" << endl;
	//do the actual locking
	this->my_muta->lock();
        cout << "mutex locked\n" << endl;
}

LockGuard::lock_guard::~lock_guard() {
        cout << "destroying mutex\n" << endl;
	this->my_muta->unlock();
}

void worker(string id)
{
//in each thread, create a mutex
	std::mutex * m = new mutex;
    while( !done ) {
        {
	//each thread calls lock_guard on its mutex
            LockGuard::lock_guard l(m);
            cout << "starting work - id: " << id << endl;
            auto start = chrono::high_resolution_clock::now();

            // Seed with a real random value, if available
            std::random_device r;

            // Choose a random mean between 1 and 6
            std::default_random_engine e1(r());
            std::uniform_int_distribution<int> uniform_dist(500, 2000);
            int mean = uniform_dist(e1);
            this_thread::sleep_for(chrono::milliseconds(mean));
            auto end = chrono::high_resolution_clock::now();
            chrono::duration<double, milli> elapsed = end-start;
            cout << "done - id: " << id << ", worked: " << elapsed.count() << " ms\n";;
	    done = true;
        }
    }
}

int main()
{
	// Start 3-4 threads
	//creates threads, pass in data
	std::thread wk_1(worker,"1");
	std::thread wk_2(worker,"2");
	std::thread wk_3(worker,"3");
	std::thread wk_4(worker,"4");
	//rejoin threads to prevent program from aborting
	wk_1.join();
	wk_2.join();
	wk_3.join();
	wk_4.join();
	return 0;
}
