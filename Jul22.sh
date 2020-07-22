#!/system/bin/sh
sleep 20
echo 4 > /sys/class/kgsl/kgsl-3d0/default_pwrlevel
echo 1 > /sys/class/kgsl/kgsl-3d0/bus_split
echo 0 > /sys/class/kgsl/kgsl-3d0/force_bus_on
echo 0 > /sys/class/kgsl/kgsl-3d0/force_rail_on
echo 0 > /sys/class/kgsl/kgsl-3d0/force_clk_on
echo 1856 > /sys/class/timed_output/vibrator/vtg_level
echo 20 > /proc/sys/fs/lease-break-time
echo noop > /sys/block/mmcblk0/queue/scheduler
echo 64 > /sys/block/mmcblk0/queue/nr_requests
echo 0 > /sys/block/mmcblk0/queue/iostats
echo 0 > /sys/block/mmcblk0/queue/add_random
echo 512 > /proc/sys/kernel/random/write_wakeup_threshold
echo 4-7 > /dev/cpuset/system-background/cpus
echo 4-7 > /dev/cpuset/foreground/cpus
echo 4-7 > /dev/cpuset/background/cpus
chmod 644 /sys/module/msm_performance/parameters/cpu_min_freq
echo 0:0 1:0 2:0 3:0 4:0 5:0 6:0 7:0 > /sys/module/msm_performance/parameters/cpu_min_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 345600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 249600 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
echo 200000 1209400:200000 1248000:400000 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
echo 200000 902400:200000 998600:400000 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
echo 1 345000:70 1094400:90 1248000:99 > /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
echo 1 249000:70 902400:90 998400:99 > /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
echo 0 > /sys/module/cpu_boost/parameters/input_boost_enabled
echo 0 > /sys/module/cpu_boost/parameters/input_boost_event
echo N > /sys/module/cpu_boost/parameters/sched_boost_on_input
echo 1 > /sys/devices/system/cpu/cpu0/core_ctl/is_big_cluster
echo 90 > /sys/devices/system/cpu/cpu0/core_ctl/task_thres
echo 60 60 60 60 > /sys/devices/system/cpu/cpu0/core_ctl/busy_down_thres
echo 80 80 80 80 > /sys/devices/system/cpu/cpu0/core_ctl/busy_up_thres
echo 60 60 60 60 > /sys/devices/system/cpu/cpu4/core_ctl/busy_down_thres
echo 80 80 80 80 > /sys/devices/system/cpu/cpu4/core_ctl/busy_up_thres
