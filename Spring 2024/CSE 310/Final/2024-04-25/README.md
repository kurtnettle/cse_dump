# Lab 07
###### 2024 April 25

### Task 1: 
*too long to type read from the* [pdf](Lab_07_Tasks.pdf)


**solution (C++):**
```cpp
#include <algorithm>
#include <climits>
#include <iostream>
#include <vector>

using namespace std;

class Process {
 public:
  int pid;
  int arrival_time;
  int burst_time;
  int turnaround_time;
  int waiting_time;
  bool is_completed;
};

class SJF {
 public:
  vector<Process> processes;
  float avg_turnaround_time;
  float avg_waiting_time;

  static bool sort_by_at(Process a, Process b) {
    return a.arrival_time < b.arrival_time;
  }

  static bool sort_by_pid(Process a, Process b) { return a.pid < b.pid; }

  void calculate() {
    int total_waiting_time = 0;
    int total_turnaround_time = 0;
    int elapsed_time = 0;
    int n = processes.size();

    sort(processes.begin(), processes.end(), this->sort_by_at);

    int completed = 0;
    while (completed < n) {
      int curr_idx = -1;
      int curr_min_burst_time = INT_MAX;

      for (int i = 0; i < n; ++i) {
        if (!processes[i].is_completed &&
            processes[i].arrival_time <= elapsed_time &&
            processes[i].burst_time < curr_min_burst_time) {
          curr_idx = i;
          curr_min_burst_time = processes[i].burst_time;
        }
      }

      if (curr_idx == -1) {
        elapsed_time++;
      } else {
        processes[curr_idx].turnaround_time =
            (elapsed_time + processes[curr_idx].burst_time) -
            (processes[curr_idx].arrival_time);

        processes[curr_idx].waiting_time = processes[curr_idx].turnaround_time -
                                           processes[curr_idx].burst_time;
        elapsed_time += processes[curr_idx].burst_time;
        processes[curr_idx].is_completed = true;

        total_waiting_time += processes[curr_idx].waiting_time;
        total_turnaround_time += processes[curr_idx].turnaround_time;
        completed++;
      }
    }
    avg_waiting_time = (float)total_waiting_time / n;
    avg_turnaround_time = (float)total_turnaround_time / n;
  }

  void debug() {
    for (auto i : processes)
      printf("%d %d\n", i.turnaround_time, i.waiting_time);
  }

  void input() {
    int n;

    cout << "Enter the number of process:" << endl;
    cin >> n;

    vector<Process> temp(n);

    cout << "Enter the CPU times:" << endl;
    for (int i = 0; i < n; ++i) {
      temp[i].pid = i + 1;
      cin >> temp[i].burst_time;
    }

    cout << "Enter the arrival times" << endl;
    for (int i = 0; i < n; ++i) cin >> temp[i].arrival_time;

    this->processes = temp;
  }

  void output() {
    sort(processes.begin(), processes.end(), this->sort_by_pid);

    for (auto i : processes) {
      printf("Process %d: Turnaround Time: %d Waiting Time: %d\n", i.pid,
             i.turnaround_time, i.waiting_time);
    }

    printf("Average Waiting time: %.2f\n", avg_waiting_time);
    printf("Average TurnAround time: %.2f", avg_turnaround_time);
  }
};

int main() {
  SJF obj;
  obj.input();
  obj.calculate();
  obj.output();
}
```
