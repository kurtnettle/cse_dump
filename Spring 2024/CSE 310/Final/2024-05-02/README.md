# Lab 08
###### 2024 May 02

*read question from the* [pdf](Lab_08_Tasks.pdf)

### Task 1: 
**solution (C++):**
```cpp
#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

class Process {
 public:
  int pid;
  int cpu_time;
  int tmp_cpu_time;
  int waiting_time;
  int turnaround_time;
};

class RoundRobbin {
 public:
  vector<Process> processes;
  int time_quantum = 3;
  int total_cpu_time;
  float avg_turnaround_time;
  float avg_waiting_time;

  static int add_cpu_time(int sum, const Process& b) {
    return sum + b.cpu_time;
  }

  void calculate() {
    int total_waiting_time = 0;
    int total_turnaround_time = 0;
    int elapsed_time = 0;

    int n = processes.size();
    int total_cpu_time =
        accumulate(processes.begin(), processes.end(), 0, add_cpu_time);

    while (elapsed_time < total_cpu_time) {
      for (int i = 0; i < n; ++i) {
        if (processes[i].cpu_time == 0) continue;

        if (processes[i].cpu_time <= time_quantum) {
          elapsed_time += processes[i].cpu_time;

          processes[i].cpu_time = 0;
          processes[i].turnaround_time = elapsed_time;
          processes[i].waiting_time = elapsed_time - processes[i].tmp_cpu_time;

          total_turnaround_time += processes[i].turnaround_time;
          total_waiting_time += processes[i].waiting_time;
        } else {
          elapsed_time += time_quantum;
          processes[i].cpu_time -= time_quantum;
        }
      }
    }

    avg_waiting_time = (float)total_waiting_time / n;
    avg_turnaround_time = (float)total_turnaround_time / n;
  }

  void debug() {
    printf("PID CT  TAT  WT\n");
    for (auto i : processes) {
      printf("%d   %d   %d   %d\n", i.pid, i.cpu_time, i.turnaround_time,
             i.waiting_time);
    }
  }

  void output() {
    for (auto i : processes) {
      printf("Process %d: Turnaround Time: %d Waiting Time: %d\n", i.pid,
             i.turnaround_time, i.waiting_time);
    }

    printf("Average Waiting time: %.2f\n", avg_waiting_time);
    printf("Average TurnAround time: %.2f", avg_turnaround_time);
  }

  void input() {
    int n;

    cout << "Enter the number of process:" << endl;
    cin >> n;

    vector<Process> temp(n);
    for (int i = 0; i < n; ++i) {
      temp[i].pid = i + 1;
      cin >> temp[i].cpu_time;
      temp[i].tmp_cpu_time = temp[i].cpu_time;
    }

    this->processes = temp;
  }
};

int main() {
  RoundRobbin obj;
  obj.input();
  obj.calculate();
  // obj.debug();
  obj.output();
}
```


### Task 2:
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
  int waiting_time;
  int turnaround_time;
  int order;
};

class PriorityScheduling {
 public:
  vector<Process> processes;
  int time_quantum = 3;
  int total_cpu_time;
  float avg_turnaround_time;
  float avg_waiting_time;

  static bool sort_by_order(Process a, Process b) { return a.order < b.order; }
  static bool sort_by_pid(Process a, Process b) { return a.pid < b.pid; }

  void calculate() {
    int elapsed_time = 0;
    int total_waiting_time = 0;
    int total_turnaround_time = 0;
    int n = processes.size();

    sort(processes.begin(), processes.end(), this->sort_by_order);

    for (int i = 0; i < n; ++i) {
      elapsed_time += processes[i].cpu_time;
      processes[i].turnaround_time = elapsed_time;
      processes[i].waiting_time =
          processes[i].turnaround_time - processes[i].cpu_time;

      total_waiting_time += processes[i].waiting_time;
      total_turnaround_time += processes[i].turnaround_time;
    }

    avg_waiting_time = (float)total_waiting_time / n;
    avg_turnaround_time = (float)total_turnaround_time / n;
  }

  void debug() {
    sort(processes.begin(), processes.end(), this->sort_by_pid);
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
      cin >> temp[i].cpu_time;
    }

    cout << "Enter the priority:" << endl;
    for (int i = 0; i < n; ++i) {
      cin >> temp[i].order;
    }

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
  PriorityScheduling obj;
  obj.input();
  obj.calculate();
  obj.output();
}
```