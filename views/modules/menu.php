<aside class="main-sidebar">
	<section class="sidebar">
		<ul class="sidebar-menu">

		<?php

			if ($_SESSION["profile"] == "Administrator") {

				echo '<li class="active">
					<a href="home">
						<i class="fa fa-home"></i>
						<span>Home</span>
					</a>
				</li>
				<li>
					<a href="users">
						<i class="fa fa-user"></i>
						<span>User management</span>
					</a>
				</li>
				<li>';
			
			}

			if($_SESSION["profile"] == "Administrator" || $_SESSION["profile"] == "Special"){

				echo '
				<li>
					<a href="categories">
						<i class="fa fa-th"></i>
						<span>Categories</span>
					</a>
				</li>

				<li>
					<a href="parts">
						<i class="fa fa-product-hunt"></i>
						<span>Medicines</span>
					</a>
				</li>';
			}

			if($_SESSION["profile"] == "Administrator" || $_SESSION["profile"] == "Seller"){

				echo '<li>
				<a href="partsUser">
					<i class="fa fa-user"></i>
					<span>Customers</span>
				</a>
			</li>';

			}

			if($_SESSION["profile"] == "Administrator" || $_SESSION["profile"] == "Seller"){

				echo '<li class="treeview">
				<a href="withdrawn">
					<i class="fa fa-list-ul"></i>
					<span>Sales</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li>
						<a href="withdrawn">
							<i class="fa fa-circle"></i>
							<span>Sales Management</span>
						</a>
					</li>
					<li>
						<a href="createWithdrawal">
							<i class="fa fa-circle"></i>
							<span>Create Sale</span>
						</a>
					</li>';
			
			}

			if($_SESSION["profile"] == "Administrator"){

				echo '<li>
						<a href="reports">
							<i class="fa fa-circle"></i>
							<span>Sales Report</span>
						</a>
					</li>';
			}
		
			echo '</ul>
				
			</li>';
			?>

		</ul>
	</section>
</aside>