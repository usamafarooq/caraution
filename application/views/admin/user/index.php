		<!-- /.Navbar  Static Side -->
			<div class="control-sidebar-bg"></div>
			<!-- Page Content -->
			<div id="page-wrapper">
				<!-- main content -->
				<div class="content">
					<!-- Content Header (Page header) -->
					<div class="content-header">
						<div class="header-icon">
							<i class="pe-7s-box1"></i>
						</div>
						<div class="header-title">
							<h1>View Users</h1>
							<small> </small>
							<ol class="breadcrumb">
								<li><a href="<?php echo base_url() ?>admin/"><i class="pe-7s-home"></i> Home</a></li>

								<li class="active">View Users</li>
							</ol>
						</div>
					</div> <!-- /. Content Header (Page header) -->

					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-bd">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>View Users</h4>
										<?php 
											if ($permission['created'] == '1') {
										?>
										<a href="<?php echo base_url('admin/users/create') ?>"><button class="btn btn-info pull-right">Add Users</button></a>
										<?php } ?>
									</div>
								</div>
								<div class="panel-body">
									
									<div class="table-responsive">
										<table id="dataTableExample2" class="table table-bordered table-striped table-hover">
											<thead>
												<tr>
													<th>Id</th>
													<th>Name</th>
													<th>Email</th>
													<th>Role</th>
													<?php 
														if ($permission['edit'] == '1' || $permission['deleted'] == '1'){
													?>
													<th>Action</th>
													<?php } ?>
												</tr>
											</thead>
										    <tbody>
										    	<?php
										    		foreach ($users as $user) {
										    	?>
												<tr>
													<td><?php echo $user['id'] ?></td>
													<td><?php echo $user['name'] ?></td>
													<td><?php echo $user['email'] ?></td>
													<td><?php echo $user['role'] ?></td>
													<?php 
														if ($permission['edit'] == '1' || $permission['deleted'] == '1'){
													?>
													<td>
														<a href="<?php echo base_url() ?>admin/users/view/<?php echo $user["id"] ?>"><button class="btn btn-info btn-circle material-ripple"><i class="material-icons">view_headline</i></button></a>
														<?php 
															if ($permission['edit'] == '1') {
														?>
														<a href="<?php echo base_url() ?>admin/users/edit/<?php echo $user['id'] ?>"><button class="btn btn-info btn-circle material-ripple"><i class="material-icons">mode_edit</i></button></a>
														<?php } ?>
														<?php 
															if ($permission['deleted'] == '1') {
														?>
		                                                <a href="<?php echo base_url() ?>admin/users/delete/<?php echo $user['id'] ?>"><button class="btn btn-danger btn-circle material-ripple"><i class="material-icons">delete_forever</i></button></a>
		                                                <?php } ?>
	                                                </td>
	                                                <?php } ?>
												</tr>
												<?php } ?>
											</tbody>
										</table>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="height: 450px;"></div>
				</div> <!-- /.main content -->
			</div><!-- /#page-wrapper -->
		</div><!-- /#wrapper -->
		<!-- START CORE PLUGINS -->






