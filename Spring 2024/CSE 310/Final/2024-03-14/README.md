# Lab 031
###### 2024 March 14

### Task 1: 
*too long to type read from the* [pdf](OS_Lab_7-1-2.pdf)

**solution (C++):**
```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

class Process {
 public:
  int pid;
  int cpu_time;
  int arrival_time;
  int waiting_time;
  int turnaround_time;
};

class FCFS {
 public:
  vector<Process> processes;

  FCFS(vector<Process> processes) { this->processes = processes; }

  static bool sort_by_at(Process a, Process b) {
    return a.arrival_time < b.arrival_time;
  }

  static bool sort_by_pid(Process a, Process b) { return a.pid < b.pid; }

  void calc() {
    sort(processes.begin(), processes.end(), this->sort_by_at);

    processes[0].waiting_time = 0;
    for (int i = 1; i < processes.size(); i++) {
      processes[i].waiting_time =
          (processes[i - 1].waiting_time + processes[i - 1].cpu_time +
           processes[i - 1].arrival_time) -
          processes[i].arrival_time;
    }

    for (int i = 0; i < processes.size(); i++) {
      processes[i].turnaround_time =
          processes[i].waiting_time + processes[i].cpu_time;
    }
  }

  void print_avg() {
    double total_tat = 0, total_wt = 0;

    for (auto process : processes) {
      total_tat += process.turnaround_time;
      total_wt += process.waiting_time;
    }

    printf("Average Waiting time: %.2f\n", total_wt / processes.size());
    printf("Average Turnaround time: %.2f\n", total_tat / processes.size());
  }

  void debug() {
    cout << "PID  "
         << "AT  "
         << "CT  "
         << "WT  "
         << "TAT  "
         << "\n";

    for (auto process : processes) {
      cout << process.pid << "    " << process.arrival_time << "   ";
      cout << process.cpu_time << "   " << process.waiting_time << "   ";
      cout << process.turnaround_time << "\n";
    }
  }

  void output() {
    sort(processes.begin(), processes.end(), this->sort_by_pid);
    for (auto process : processes) {
      printf("Process %d: Waiting Time: %d Turnaround Time: %d\n", process.pid,
             process.waiting_time, process.turnaround_time);
    }
  }
};

int main() {
  int n;

  cout << "Enter number of processes: ";
  cin >> n;

  vector<Process> arr(n);

  cout << "Enter the CPU times: ";
  for (int i = 0; i < n; ++i) {
    arr[i].pid = i + 1;
    cin >> arr[i].cpu_time;
  }

  cout << "Enter the arrival times: ";
  for (int i = 0; i < n; ++i) cin >> arr[i].arrival_time;

  FCFS obj(arr);
  obj.calc();
  // obj.debug();
  obj.output();
  obj.print_avg();
}
```
<br>

> [!IMPORTANT]
> There is an issue with the given algorithm in the lab manual. We also need to add the `arrival_time` of previous process. The provided algorithm will work if we assume all the process has arrival time 0 but that's not the case here.

