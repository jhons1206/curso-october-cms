<?php 
class Cms6208a633b2993620739273_bf3daa88f3194c9d0ed4dc1d526213c5Class extends Cms\Classes\PageCode
{
public function onStart() {
    //echo date('H');
    $this['isEarly'] = date('H') >= 9 && date('H') <= 12;
    
    $this['fruits'] = ['banana', 'apple', 'orange', 'mango'];
    
    $this['users'] = ['jhon', 'jeremy', 'nicol', 'romy', 'fabi', 'andy', 'abigail'];            
}
}
