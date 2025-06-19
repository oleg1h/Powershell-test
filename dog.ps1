Class dog{
    [int]$age

    dog([int]$years) {
        $this.age = $years
    }

    [array] agetohuman(){
        [array]$humanAges = @()
        while ($this.age -gt 0) {
            if($this.age -le 2){
                $humanAges += $this.age * 10.5
            } else {
                $humanAges += 21 + (($this.age - 2) * 4)
            }
            $this.age--
        }
        return $humanAges
    }
}