# Lab 07
###### 2024 April 25

### Task 1: 
*too long to type read from the* [pdf](Lab_07_Tasks.pdf)


**solution (C++):**
```cpp
#include <algorithm>
#include <climits>
#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

bool DEBUG;

class Process {
 public:
  int pid;
  int cpu_time;
  int arrival_time;
  int waiting_time;
  int turnaround_time;
  bool is_completed;
  int completion_id;
};

class SJF {
 public:
  vector<Process> processes;

  SJF(vector<Process> processes) { this->processes = processes; }

  static bool sort_by_at(Process a, Process b) {
    return a.arrival_time < b.arrival_time;
  }

  static bool sort_by_ct(Process a, Process b) {
    return a.cpu_time < b.cpu_time;
  }

  static bool sort_by_pid(Process a, Process b) { return a.pid < b.pid; }

  void calc() {
    sort(processes.begin(), processes.end(), this->sort_by_at);

    int total_elapsed = 0;
    int completed_process = 0;

    while (true) {
      bool change = false;
      int curr_idx = -1;
      int min_ct = INT_MAX;

      if (completed_process == processes.size()) break;

      for (int i = 0; i < processes.size(); ++i) {
        if ((processes[i].arrival_time <= total_elapsed) &&
            (!processes[i].is_completed) && (processes[i].cpu_time < min_ct)) {
          curr_idx = i;
          change = true;
          min_ct = processes[i].cpu_time;
        }
      }

      if (!change) {
        total_elapsed++;
      } else {
        processes[curr_idx].is_completed = true;
        processes[curr_idx].turnaround_time =
            (total_elapsed + processes[curr_idx].cpu_time) -
            (processes[curr_idx].arrival_time);

        processes[curr_idx].waiting_time =
            processes[curr_idx].turnaround_time - processes[curr_idx].cpu_time;

        total_elapsed += processes[curr_idx].cpu_time;
        completed_process++;
      }
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
         << "BT  "
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
  DEBUG = true;

  if (!DEBUG) cout << "Enter number of processes: ";
  cin >> n;

  vector<Process> arr(n);

  if (!DEBUG) cout << "Enter the CPU times: ";
  for (int i = 0; i < n; ++i) {
    arr[i].pid = i + 1;
    cin >> arr[i].cpu_time;
  }

  if (!DEBUG) cout << "Enter the arrival times: ";
  for (int i = 0; i < n; ++i) cin >> arr[i].arrival_time;

  SJF obj(arr);
  obj.calc();
  obj.output();
  obj.print_avg();
  // obj.debug();
}
```