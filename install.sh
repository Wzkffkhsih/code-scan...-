#!/bin/bash
echo "Downloading SA Pro..."
pip install requests urllib3

# .so ဖိုင်ကို ဒေါင်းလုဒ်ဆွဲမယ်
curl -sL -o SA.so "https://raw.githubusercontent.com/Wzkffkhsih/code-scan/main/SA.so"

echo "Starting..."
python3 -c "
import importlib.util
spec = importlib.util.spec_from_file_location('sa_pro', 'SA.so')
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
mod.main()
"
