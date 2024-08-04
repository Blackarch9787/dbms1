<?php
echo "successfully php file launched";
$n=$_POST['name'];
$p=$_POST['pass'];
$con=mysqli_connect("localhost","root","","tutorial");
$sql="insert into student(name,pass) values('$n','$p')";
$r=mysqli_query($con,$sql);
if($r)
{
    echo "added successfully";

}
else
{
    echo "failed"; 

}



?>