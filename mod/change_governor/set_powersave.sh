echo 'GOVERNOR="powersave"' | sudo tee /etc/default/cpufrequtils
sudo systemctl restart cpufrequtils
