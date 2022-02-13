<?php 
class Cms6207f378679dc293313475_f169f0bfdd17b45cb3865e6a5fb41a54Class extends Cms\Classes\PageCode
{
public function onStart() {
    //echo date('H');
    $this['isEarly'] = date('H') >= 9 && date('H') <= 12;
    
    $this['fruits'] = ['banana', 'apple', 'orange', 'mango'];
    
    $this['users'] = ['jhon', 'jeremy', 'nicol', 'romy', 'fabi', 'andy', 'abigail'];            
}
}
