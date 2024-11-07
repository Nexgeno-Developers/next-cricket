<style>
.well {
	/* margin: 15px; */
	color: aliceblue;
}
.carousel-inner {
    width: 100%;
}
.navbar.navbar-default {
    display: none;
}

div.play {
  color: #ddd;
  width: 50px;
  height: 50px;
  text-align: center;
  line-height: 50px;
  font-size: 14px;
  cursor: pointer;
  position: relative;
	left: 26px;
  bottom: 20px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  -webkit-box-shadow: inset 0 0 0 0 #CD391F, inset 0 0 0 0 #fff,inset 0 0 0 0px #cd3920;
  -moz-box-shadow: inset 0 0 0 0 #CD391F, inset 0 0 0 0 #fff,inset 0 0 0 0px #cd3920;
  box-shadow: inset 0 0 0 0 #CD391F, inset 0 0 0 0 #fff,inset 0 0 0 0px #cd3920;
  color: #fff;
  background-color: #CD391F;
}

div.play:hover,
div.play.active {
	-webkit-box-shadow: inset 0 0 0 1px #ddd, inset 0 0 0 3px #fff,inset 0 0 0 4px #ddd;
  background-color: #3498db;  
  box-shadow: inset 0 0 0 1px #ddd, inset 0 0 0 3px #fff,inset 0 0 0 4px #ddd;
    -webkit-transition: all .2s ease;
    transition: all .2s ease;
}
</style>

<div id="content-container" class="container">
	<div id="page-title">
		<h1 class="page-header text-overflow" >Team Players</h1>
	</div>
	<div class="page-content">
		<div class="panel">
			<div class="panel-body">
				<div id="myCarousel" class="carousel slide" data-ride="carousel" >
					<!-- Indicators -->
					<?php /*$number = 0; ?>  
					<ol class="carousel-indicators">
						<?php foreach($all_team as $row){ ?>
						<li data-target="#myCarousel" data-slide-to="<?php echo $number++; ?>"></li>
						<?php } 
					</ol> */?>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<?php $flag = 1;  $i=0; ?>
						<?php foreach($all_team as $row){ ?>
							<div class="item <?php if($flag) echo 'active'; ?>" data-url="<?= base_url(); ?>index.php/admin/team_player/get_team_details/<?= $row['teams_id']; ?>" data-slide-number="<?= $i++; ?>">
							</div>
						<?php $flag=0; } ?>
					</div>
				</div>
			</div>
				<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev" style="margin-left: -50px;">
						<span style="color: rgba(0,0,0,0.7);" class="glyphicon glyphicon-chevron-left"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next" style="margin-right: -50px;">
						<span style="color: rgba(0,0,0,0.7);" class="glyphicon glyphicon-chevron-right"></span>
						<span class="sr-only">Next</span>
					</a>
					<center><div class="play" id="toggleCarousel">Pause</div></center>
		</div>
	</div>
</div>

<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'team_player';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';	
	var paused = 0;
$('#myCarousel').bind('slide.bs.carousel', function (e) {
	/* get index of currently active item */
	var idx = $('#myCarousel .item.active').index();
	var url = $('.item.active').data('url');
	/* ajax load from data-url */
	$('.item').load(url,function(result){
	    $('#myCarousel').carousel({interval: 5000}, idx);  
	});
  
});
/* load first slide */
$('[data-slide-number=0]').load($('[data-slide-number=0]').data('url'),function(result){    
	$('#myCarousel').carousel({interval: 5000}, 0);
});

/* Play trigger */
$('#toggleCarousel').click(function() {
	var state = (paused) ? 'cycle' : 'pause';
	paused = (paused) ? 0 : 1;
	$('#myCarousel').carousel(state);
	$(this).find('i').toggleClass('fa-play fa-pause');
});

$('.play').click(function(){
    var $this = $(this);
    var id = $this.attr('id').replace(/btn/, '');
    $this.toggleClass('active');
    if($this.hasClass('active')){
        $this.text('play');        
    } else {
        $this.text('pause');
    }
});

</script>
