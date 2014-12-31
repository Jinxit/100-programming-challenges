all: age-to-seconds

age-to-seconds: age_to_seconds.adb
	gnatmake age_to_seconds.adb -o age_to_seconds.out

clean:
	rm -rf *.o *.out *.ali
