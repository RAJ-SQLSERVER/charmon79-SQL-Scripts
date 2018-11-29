get-process -computername PWCADAPP02 | Where ProcessName -like 'BBS*' | Group-Object -Property ProcessName | `
    Format-Table Name, @{n='Mem (KB)';e={'{0:N0}' -f (($_.Group|Measure-Object WorkingSet -Sum).Sum / 1KB)};a='right'} -AutoSize