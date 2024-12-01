Import-Module "../Ado2024.psd1" -force

# Define the path to the input data file
$filePath = "inputdata.txt"
#$filePath = "testdata.txt"

# Initialize arrays to hold the values from each column
$FirstNumbers = @()
$SecondNumbers = @()

# Read the file line by line
Get-Content $filePath | ForEach-Object {
    # Split each line by whitespace
    $columns = $_ -split '\s+'
    
    # Add the values to the respective arrays
    $FirstNumbers += [int]$columns[0]
    $SecondNumbers += [int]$columns[1]
}


Get-SimilarityScore -FirstNumbers $FirstNumbers -SecondNumbers $SecondNumbers

