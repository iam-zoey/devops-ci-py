import time

def log_messages():
    while True:
        with open('logfile.txt', 'a') as f:
            f.write(f"Logging message at {time.strftime('%Y-%m-%d %H:%M:%S')}\n")
        time.sleep(10)  # Log every 10 seconds

if __name__ == '__main__':
    log_messages()
