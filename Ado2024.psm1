function Get-TotalLength {
    [CmdletBinding()]
    param (
        [array]$FirstNumbers,
        [array]$SecondNumbers
    )
    $result = 0
    $index = 0
    $sortedSecondNumbers = $SecondNumbers | Sort-Object
    $sortedfirstNumbers = $FirstNumbers | Sort-Object
    $sortedfirstNumbers | ForEach-Object {
        $result += [math]::Abs($sortedSecondNumbers[$index] - $_)
        $index++
    }
    $result
}