👉 Example Scenarios:

Scenario	Start-Date & End-Date	Include-Sub-Folders	Expected Behavior
Find files from 2025-01-01 to 2025-02-01 in the main folder only	"20250101" - "20250201"	False	Only filters files from the main directory
Find files from 2025-01-01 to 2025-02-01 including subfolders	"20250101" - "20250201"	True	Filters both main and subdirectory files
Find all files in all folders	No date filter	True	Finds all files in the folder and subfolders
