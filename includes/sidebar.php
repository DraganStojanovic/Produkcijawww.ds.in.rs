<aside class="col-lg-4">
     <form class="panel-group form-horizontal" action="search.php" role="form">
          <div class="panel panel-default">
               <div class="panel-body">
                    <div class="panel-header">
                         <h4>Search Something</h4>
                    </div>
                    <div class="input-group">
                         <input type="search" name="search" class="form-control" placeholder="Search Something....">
                         <div class="input-group-btn">
                              <button class="btn btn-default" name="search_submit" type="submit"><i class="glyphicon
                              glyphicon-search"></i></button>
                         </div>
                    </div>

               </div>
          </div>
     </form>
     <div class="list-group">
         <?php
           $sel_side = "SELECT * FROM posts";
           $run_side = mysqli_query($conn,$sel_side);
            while($rows = mysqli_fetch_assoc($run_side)){
                 if(isset ($_GET['post_id'])){
                      if($_GET['post_id'] == $rows['posts_id']){
                           $class='active';
                      }else{
                           $class='';
                      }
                 }else{
                      $class='';
                 }
                 
                 echo '<br>
                  <a href="post.php?post_id='.$rows['posts_id'].'" class="list-group-item '.$class.' ">
                  <div class="col-sm-4">
                  <img src="'.$rows['image'].'"width="100%">
                  </div>
                  <div class="col-sm-8">
                       <h4 class="list-group-item-heading">'.$rows['title'].'</h4>
                       <p class="list-group-item-text">'.substr($rows['description'],0,50).'</p>
                  </div>
                  <div style="clear:both;"></div>
                  
                  </a>
                 ';
            }

         ?>


     </div>
</aside>
