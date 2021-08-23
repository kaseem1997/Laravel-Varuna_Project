<?php
$company_logo_url = asset('public/assets/themes/theme-1/images/varuna_group.png');

/*$COMPANY_LOGO_VAL = CustomHelper::WebsiteSettings('COMPANY_LOGO');

if(!empty($COMPANY_LOGO_VAL) && file_exists(public_path('storage/settings/'.$COMPANY_LOGO_VAL))){
  $company_logo_url = asset('public/storage/settings/'.$COMPANY_LOGO_VAL);
}*/

$COMPANY_LOGO = '<a href="'.url('').'"><img src="'.$company_logo_url.'" alt="Varuna" height="50" /></a>';
?>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Varuna</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Maven+Pro&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td>
					<table width="800" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" style="border: 1px solid #ddd;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td style="padding: 20px 0px 20px 40px;">
												<?php echo $COMPANY_LOGO; ?>
											</td>
										</tr>
										<tr bgcolor="#1c2c5e">
											<td align="left" style="color: #fff; font-size: 20px; padding: 20px 40px;">Capability enquiry on - <?php echo date('d M Y H:i A'); ?> </td>
											
										</tr>
										<tr>
											<td style="padding: 30px 0px 0 40px;">
												<span style="font-size: 24px; color: #3f4041; font-family: 'Roboto', sans-serif, Arial;">Hi Admin!</span>
												<p style="font-size: 16px; font-family: 'Roboto', sans-serif, Arial; color: #626365; line-height: 32px; margin-bottom: 0; margin-top: 10px;">
													Your have an new enquiry, details given below:
												</p>
											</td>
										</tr>

										<tr>
											<td style="padding: 10px 0px 10px 40px;">
												<table>
													<tr>
														<th style="text-align: left;">First Name &nbsp;&nbsp;&nbsp;:&nbsp; </th> <td><?php echo $first_name; ?></td>
													</tr>
													<tr>
														<th style="text-align: left;">Last Name &nbsp;&nbsp;:&nbsp; </th> <td><?php echo $last_name; ?></td>
													</tr>
													
													<tr>
														<th style="text-align: left;">Email :&nbsp; </th> <td><?php echo $email; ?></td>
													</tr>

													
													<tr>
														<th style="text-align: left;">Phone :&nbsp; </th> <td><?php echo $phone; ?></td>
													</tr>

													<tr>
														<th style="text-align: left;">Company :&nbsp; </th> <td><?php echo $company; ?></td>
													</tr>
													<tr>
														<th style="text-align: left;">Designation :&nbsp; </th> <td><?php echo $title; ?></td>
													</tr>
													<tr>
														<th style="text-align: left;">Annual Sales Revenue :&nbsp; </th> <td><?php echo $annual_sales; ?></td>
													</tr>

													<tr>
														<th style="text-align: left;">Comments :&nbsp; </th> <td><?php echo $comment; ?></td>
													</tr>
												</table>
											</td>
										</tr>

										<tr>
											<td style="padding: 10px 0px 10px 40px;">						
												<p style="color: #3a3a3c; font-size: 17px; font-weight: 400; font-family: Roboto; margin: 4px 0px;">Varuna</p>
											</td>
										</tr>

										<tr bgcolor="#1c2c5e">
											<td colspan="2" height="4"></td>

										</tr>
										<tr bgcolor="#ffffff">
											<td colspan="2" height="1"></td>

										</tr>
										<tr bgcolor="#1c2c5e">
											<td colspan="2" height="8"></td>
										</tr>

									</tbody>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>