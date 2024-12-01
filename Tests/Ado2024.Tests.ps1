Import-Module "../Ado2024.psd1" -force

Describe "Get-TotalLength" {
    It "shlould return the total as 1" {
        $result = Get-TotalLength -FirstNumbers 1 -SecondNumbers 2
        $result | Should -Be 1
    }

    It "should return the total as 2" {
        $result = Get-TotalLength -FirstNumbers 1 -SecondNumbers 3
        $result | Should -Be 2
    }

    It "should return the total as 3" {
        $result = Get-TotalLength -FirstNumbers 1,1 -SecondNumbers 2,3
        $result | Should -Be 3
    }

    It "should return the total as 4" {
        $result = Get-TotalLength -FirstNumbers 1,1,2 -SecondNumbers 2,3,3
        $result | Should -Be 4
    }

    It "should return the total as 5" {
        $result = Get-TotalLength -FirstNumbers 1,1,2,3 -SecondNumbers 2,3,3,4
        $result | Should -Be 5
    }

    It "should return the total as 5" {
        $result = Get-TotalLength -FirstNumbers 3,2,1,1 -SecondNumbers 4,3,3,2
        $result | Should -Be 5
    }

    It "should return the total as 11" {
        $result = Get-TotalLength -FirstNumbers 2,3,5 -SecondNumbers 4,7,10
        $result | Should -Be 11
    }

    It "should return the total as 10" {
        $result = Get-TotalLength -FirstNumbers 2,5,3 -SecondNumbers 7,10,4
        $result | Should -Be 11
    }

    It "should return the total as 10" {
        $result = Get-TotalLength -FirstNumbers 5,3,2 -SecondNumbers 4,10,7
        $result | Should -Be 11
    }

}