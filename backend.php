<?php
include "connection.php";




  $result=mysqli_query($db,"SELECT username,bid,returned,day,fine,status FROM `fine` where username like '%$_GET[key]%' ");

  if(mysqli_num_rows($q)==0)
  {
    echo "Sorry! No student found with that username. Try searching again.";
  }
  else
  {


      while ($row = mysqli_fetch_assoc($result)) {
             $content[] = $row;
      }
      
      $data = ["content" => $content];
      header('Content-type: application/json');
      echo json_encode($data);
     

  }

