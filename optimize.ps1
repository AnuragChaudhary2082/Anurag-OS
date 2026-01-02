Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create the Window
$form = New-Object System.Windows.Forms.Form
$form.Text = "Anurag's PC Optimizer"
$form.Size = New-Object System.Drawing.Size(300,250)
$form.StartPosition = "CenterScreen"
$form.BackColor = "#2c3e50"

# Title Label - UPDATED WITH YOUR NAME
$label = New-Object System.Windows.Forms.Label
$label.Text = "ANURAG'S OPTIMIZER"
$label.Location = New-Object System.Drawing.Point(10,20)
$label.Size = New-Object System.Drawing.Size(280,30)
$label.ForeColor = "White"
$label.Font = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Bold)
$label.TextAlign = "MiddleCenter"
$form.Controls.Add($label)

# BOOST BUTTON
$btnBoost = New-Object System.Windows.Forms.Button
$btnBoost.Text = "BOOST PC (4.00GHz)"
$btnBoost.Location = New-Object System.Drawing.Point(50,70)
$btnBoost.Size = New-Object System.Drawing.Size(200,40)
$btnBoost.BackColor = "#e67e22"
$btnBoost.ForeColor = "White"
$btnBoost.FlatStyle = "Flat"
$btnBoost.Add_Click({
    powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    [System.GC]::Collect()
    [System.Windows.Forms.MessageBox]::Show("PC Boosted to Max Performance by Anurag!", "Success")
})
$form.Controls.Add($btnBoost)

# NORMAL BUTTON
$btnNormal = New-Object System.Windows.Forms.Button
$btnNormal.Text = "NORMAL MODE"
$btnNormal.Location = New-Object System.Drawing.Point(50,130)
$btnNormal.Size = New-Object System.Drawing.Size(200,40)
$btnNormal.BackColor = "#27ae60"
$btnNormal.ForeColor = "White"
$btnNormal.FlatStyle = "Flat"
$btnNormal.Add_Click({
    powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e
    [System.Windows.Forms.MessageBox]::Show("PC returned to Balanced Mode.", "Success")
})
$form.Controls.Add($btnNormal)

# Show the Form
$form.ShowDialog()