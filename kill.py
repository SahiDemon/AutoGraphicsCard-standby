import subprocess

def get_gpu_processes():
    try:
        output = subprocess.check_output(["nvidia-smi", "--query-compute-apps=pid,process_name", "--format=csv,noheader"])
        lines = output.decode('utf-8').strip().split('\n')
        gpu_processes = []
        for line in lines:
            pid, process_name = line.split(',')
            gpu_processes.append((int(pid.strip()), process_name.strip()))
        return gpu_processes
    except Exception as e:
        print(f"Error: {e}")
        return None

def terminate_gpu_processes():
    gpu_processes = get_gpu_processes()

    if gpu_processes is not None:
        for pid, process_name in gpu_processes:
            if process_name.lower() == 'explorer.exe':
                print("Skipping explorer.exe process with PID 20244.")
                continue

            try:
                # Terminate the process by PID
                subprocess.run(["taskkill", "/F", "/PID", str(pid)], capture_output=True, text=True)
                print(f"Process with PID {pid} ({process_name}) terminated successfully.")
            except Exception as e:
                print(f"Error occurred while terminating process with PID {pid}: {e}")

if __name__ == "__main__":
    terminate_gpu_processes()
