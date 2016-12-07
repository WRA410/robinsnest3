<?php // Example 26-11: messages.php
  require_once 'header.php';

  if (!$loggedin) die();

  if (isset($_GET['view'])) $view = sanitizeString($_GET['view']);
  else                      $view = $user;

  if (isset($_POST['text']))
  {
    $text = sanitizeString($_POST['text']);

    if ($text != "")
    {
      $pm   = 0;
      $time = time();
      queryMysql("INSERT INTO messages VALUES(NULL, '$user',
        '$view', '$pm', $time, '$text')");
    }
  }

  if ($view != "")
  {
    if ($view == $user) $name1 = $name2 = "Your";
    else
    {
      $name1 = "<a href='members.php?view=$view'>$view</a>'s";
      $name2 = "$view's";
    }

    echo "<div class='main'>";
    // <h3>$name1 Home</h3>";
    // showProfile($view);
    
    echo <<<_END
      <form method='post' action='members.php?view=$view'>
      Type here to leave a message:<br>
      <textarea name='text' cols='40' rows='3'></textarea><br>
      <input type='submit' value='Post Message'></form><br>
_END;

    if (isset($_GET['erase']))
    {
      $erase = sanitizeString($_GET['erase']);
      queryMysql("DELETE FROM messages WHERE id=$erase");
    }
    
    $query  = "SELECT * FROM messages ORDER BY time DESC";
    $result = queryMysql($query);
    $num    = $result->num_rows;
    
    for ($j = 0 ; $j < $num ; ++$j)
    {
      $row = $result->fetch_array(MYSQLI_ASSOC);

      if ($row['pm'] == 0 || $row['auth'] == $user)
      {
        $messenger= $row['auth'];
        if (file_exists("$messenger.jpg"))
        echo "<img src='$messenger.jpg' style='width:50px; float:left'>";

        echo "<div style='font-size:12px;'>" ;
        echo date ('M jS g:ia' , $row['time']);
        echo "</div>";

        echo " <a href='members.php?view=" . $row['auth'] . "' id='messagestuff'>" . $row['auth']. "</a> :";
        echo "<br>";
        echo " &quot;" . $row['message'] . "&quot; ";


        if ($row['auth'] == $user)
          echo "<a href='members.php?view=$view" .
               "&erase=" . $row['id'] . "' style='font-size:12px; text-decoration:none;'>[delete]</a>";
        echo "<br>";
        echo "<br>";
      }
    }
  }

  if (!$num) echo "<br><span class='info'>No messages yet</span><br><br>";

  echo "<br><a class='button' href='members.php?view=$view'>Refresh messages</a>";
?>

    </div><br>
  </body>
</html>
