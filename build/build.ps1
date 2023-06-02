# Define the paths and filenames
$prologExecutable = "C:\path\to\prolog.exe"
$prologSourceFile = "C:\path\to\main.pl"

# Compile and run the Prolog file
$compileCommand = "-s $prologSourceFile -g true"
$runCommand = "-s $prologSourceFile -g main -t halt"
$command = "$prologExecutable $compileCommand,$runCommand"

# Execute the Prolog command
Start-Process -NoNewWindow -Wait -FilePath "cmd.exe" -ArgumentList "/c", $command
