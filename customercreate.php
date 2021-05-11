<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>LazeRosa - Customer Purchase Order</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="assets/css/Jost.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/material-icons.min.css">
    <link rel="stylesheet" href="assets/css/breadcrumb.css">
    <link rel="stylesheet" href="assets/css/customtable.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/sticky-dark-top-nav-with-dropdown-1.css">
    <link rel="stylesheet" href="assets/css/sticky-dark-top-nav-with-dropdown.css">
</head>

<body id="Page-Body">
    <div id="Page-Wrapper">
        <div class="d-flex flex-column" id="Body-Wrapper">
            <div id="Body">
                <nav class="navbar navbar-light navbar-expand sticky-top bg-white shadow mb-4 topbar static-top" id="Navigation-Bar" style="height: 90px;padding-left: 0px;margin-bottom: 0px;padding-bottom: 8px;">
                    <div class="container-fluid" id="Navbar-Container">
                        <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" id="Navbar-MenuSection" style="width: 100%;">
                            <div id="Navbar-ButtonGroup" class="input-group" style="width: 100%;min-width: 1000px;"><img id="Site-Logo" src="assets/img/SYSTIMP/LazeRosa%20Logo.png" style="width: 100pxpx;height: 90px;">
                                <div class="collapse navbar-collapse" id="Header-Menu">
                                    <ul class="nav navbar-nav nav-right" id="Header-Menu-Frame" style="margin-left: 18px;height: 100%;">
                                        <li class="nav-item d-block" role="presentation" id="Home-Select" style="padding: 0px;padding-top: 0px;width: 85px;height: 100%;margin-right: 25px;">
                                            <div data-bs-hover-animate="pulse" id="Home-Button" style="padding: 0px;padding-top: 0px;width: 100%;height: 100%;padding-bottom: 0px;"><a class="active text-center d-block" id="Home-Link" href="dashboard.php" style="color: rgb(0,0,0);height: 100%;font-size: 15px;padding-top: 0px;font-family: ABeeZee, sans-serif;width: 100%;"><img class="d-block" id="Home-Icon" src="assets/img/SYSTIMP/Home%20(Icon).png" style="width: 25px;margin-left: auto;margin-right: auto;padding-bottom: 10px;padding-top: 15px;margin-top: 0px;"><span>Home</span></a></div>
                                        </li>
                                        <li class="nav-item dropdown d-block" data-bs-hover-animate="pulse" id="Inventory-Select-DD" style="width: auto;margin-right: 25px;margin-left: 0px;padding-left: 5px;"><a class="dropdown-toggle nav-link d-block" data-toggle="dropdown" aria-expanded="false" id="Inventory-Link" href="#" style="height: 100%;font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 15px;padding-right: 0;padding-left: 0;"><img class="d-block d-xl-flex" id="Inventory-Icon" src="assets/img/SYSTIMP/Inventory%20(Icon).png" style="width: 25px;padding-right: 0px;padding-left: 0px;margin-right: auto;margin-left: auto;padding-top: 15px;padding-bottom: 10px;"><span>Inventory</span></a>
                                            <div
                                                class="dropdown-menu border rounded shadow" role="menu" id="Inventory-Dropdown-Submenu" style="color: rgb(0,0,0);background-color: rgb(255,255,255);font-family: ABeeZee, sans-serif;font-size: 14px;width: auto;"><a class="dropdown-item d-block" role="presentation" id="ViewInv-Link" href="viewinventory.php" style="height: 50px;margin-top: 5px;"><span id="ViewInv-Text">View Inventory</span></a>
                                                <a
                                                    class="dropdown-item d-block" role="presentation" id="Pricelist-Link" href="pricelist.php" style="height: 50px;margin-top: 5px;"><span id="Pricelist-Text">Pricelist</span></a>
                                </div>
                                </li>
                                <li class="nav-item dropdown d-block" data-bs-hover-animate="pulse" id="Sales-Select-DD" style="width: auto;margin-right: 25px;margin-left: 0px;padding-left: 5px;"><a class="dropdown-toggle nav-link d-block" data-toggle="dropdown" aria-expanded="false" id="Sales-Link" href="#" style="height: 100%;font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 15px;padding-right: 0;padding-left: 0;"><img class="d-block d-xl-flex" id="Sales-Icon" src="assets/img/SYSTIMP/Sales%20(Icon).png" style="width: 25px;padding-right: 0px;padding-left: 0px;margin-right: auto;margin-left: auto;padding-top: 15px;padding-bottom: 10px;"><span>Sales</span></a>
                                    <div
                                        class="dropdown-menu border rounded shadow" role="menu" id="Sales-Dropdown-Submenu" style="color: rgb(0,0,0);background-color: rgb(255,255,255);font-family: ABeeZee, sans-serif;font-size: 14px;width: 205px;"><a class="dropdown-item d-block" role="presentation" id="CustPO-Link" href="customerpo2.php" style="height: 50px;margin-top: 5px;"><span id="CustPO-Text">Customer PO</span></a>
                                        <a
                                            class="dropdown-item d-block" role="presentation" id="CustOrderList-Link" href="customerorderlist.php" style="height: 50px;margin-top: 5px;width: auto;"><span id="CustOrderList-Text">Customer Order List</span></a><a class="dropdown-item d-block" role="presentation" id="CustTracker-Link"
                                                href="customerordertracker.php" style="height: 50px;margin-top: 5px;"><span id="CustTracker-Text">Customer Order Tracker</span></a></div>
                            </li>
                            <li class="nav-item dropdown d-block" data-bs-hover-animate="pulse" id="Reorder-Select-DD" style="width: auto;margin-right: 25px;margin-left: 0px;padding-left: 5px;"><a class="dropdown-toggle nav-link d-block" data-toggle="dropdown" aria-expanded="false" id="Reorder-Link" href="#" style="height: 100%;font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 15px;padding-right: 0;padding-left: 0;"><img class="d-block d-xl-flex" id="Reorder-Icon" src="assets/img/SYSTIMP/Reorder%20(Icon).png" style="width: 25px;padding-right: 0px;padding-left: 0px;margin-right: auto;margin-left: auto;padding-top: 15px;padding-bottom: 10px;"><span>Reorder</span></a>
                                <div
                                    class="dropdown-menu border rounded shadow" role="menu" id="Reorder-Dropdown-Submenu" style="color: rgb(0,0,0);background-color: rgb(255,255,255);font-family: ABeeZee, sans-serif;font-size: 14px;width: 195px;"><a class="dropdown-item d-block" role="presentation" id="SuppPO-Link" href="supplierpo.php" style="height: 50px;margin-top: 5px;"><span id="SuppPO-Text">Supplier PO</span></a>
                                    <a
                                        class="dropdown-item d-block" role="presentation" id="SuppOrderList-Link" href="supplierorderlist.php" style="height: 50px;margin-top: 5px;width: auto;"><span id="SuppOrderList-Text">Supplier Order List</span></a><a class="dropdown-item d-block" role="presentation" id="SuppTracker-Link"
                                            href="supplierordertracker.php" style="height: 50px;margin-top: 5px;"><span id="SuppTracker-Text">Supplier Order Tracker</span></a></div>
                    </li>
                    <li class="nav-item dropdown d-block" data-bs-hover-animate="pulse" id="Reports-Select-DD" style="width: auto;margin-right: 25px;margin-left: 0px;padding-left: 5px;"><a class="dropdown-toggle nav-link d-block" data-toggle="dropdown" aria-expanded="false" id="Reports-Link" href="#" style="height: 100%;font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 15px;padding-right: 0;padding-left: 0;"><img class="d-block d-xl-flex" id="Reports-Icon" src="assets/img/SYSTIMP/Reports%20(Icon).png" style="width: 25px;padding-right: 0px;padding-left: 0px;margin-right: auto;margin-left: auto;padding-top: 15px;padding-bottom: 10px;"><span>Reports</span></a>
                        <div
                            class="dropdown-menu border rounded shadow" role="menu" id="Reports-Dropdown-Submenu" style="color: rgb(0,0,0);background-color: rgb(255,255,255);font-family: ABeeZee, sans-serif;font-size: 14px;width: 195px;"><a class="dropdown-item d-block" role="presentation" id="TotSalesEx-Link" href="Reports_Total.html" style="height: 50px;margin-top: 5px;"><span id="TotSalesEx-Text">Total Sales &amp; Expenses</span></a>
                            <a
                                class="dropdown-item d-block" role="presentation" id="DamRet-Link" href="Reports_DamRet.html" style="height: 50px;margin-top: 5px;width: auto;"><span id="DamRet-Text">Damaged/Returned</span></a>
            </div>
            </li>
            </ul>
        </div>
    </div>
    </form>
    <ul class="nav navbar-nav flex-nowrap ml-auto" id="Header-Personal">
        <li class="nav-item dropdown d-sm-none no-arrow" id="Personal-Section"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
            <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" role="menu" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto navbar-search w-100">
                    <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                        <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                    </div>
                </form>
            </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1" role="presentation" id="Notification">
            <div class="nav-item dropdown no-arrow" id="Notification-DD"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" data-bs-hover-animate="swing" id="Notification-Link" href="#"><span id="Notification-Counter" class="badge badge-danger badge-counter">3+</span><img id="Notification-Bell" style="width: 25px;height: 25px;" src="assets/img/SYSTIMP/Notifications%20(Icon).png"></a>
                <div
                    class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in" role="menu" id="Notification-Menu">
                    <h6 id="Notification-DDHeader" class="dropdown-header" style="background-color: #ffafaf;font-family: Nunito, sans-serif;font-size: 12px;color: rgb(0,0,0);">NOTIFICATION center</h6>
                    <a class="d-flex align-items-center dropdown-item" id="Report-Notification-Item" href="#">
                        <div id="Report-NotifItem-Type" class="mr-3">
                            <div class="bg-primary icon-circle" id="Report-NotifItem-TypeCircleFrame"><i class="fas fa-file-alt text-white" id="Report-NotifItem-TypeIcon"></i></div>
                        </div>
                        <div id="Report-NotifItem-Details"><span id="Report-NotifItem-Date" class="small text-gray-500">December 12, 2019</span>
                            <p id="Report-NotifItem-Description">A new monthly report is ready to download!</p>
                        </div>
                    </a>
                    <a class="d-flex align-items-center dropdown-item" id="Finance-Notification-Item" href="#">
                        <div id="Finance-NotifItem-Type" class="mr-3">
                            <div class="bg-success icon-circle" id="Finance-NotifItem-TypeCircleFrame"><i class="fas fa-donate text-white" id="Finance-NotifItem-TypeIcon"></i></div>
                        </div>
                        <div id="Finance-NotifItem-Details"><span id="Finance-NotifItem-Date" class="small text-gray-500">December 7, 2019</span>
                            <p id="Finance-NotifItem-Description">$290.29 has been deposited into your account!</p>
                        </div>
                    </a>
                    <a class="d-flex align-items-center dropdown-item" id="Alert-Notification-Item" href="#">
                        <div id="Alert-NotifItem-Type" class="mr-3">
                            <div class="bg-warning icon-circle" id="Alert-NotifItem-TypeCircleFrame"><i class="fas fa-exclamation-triangle text-white" id="Alert-NotifItem-TypeIcon"></i></div>
                        </div>
                        <div id="Alert-NotifItem-Details"><span id="Alert-NotifItem-Date" class="small text-gray-500">December 2, 2019</span>
                            <p id="Alert-NotifItem-Description">Spending Alert: We've noticed unusually high spending for your account.</p>
                        </div>
                    </a>
            </div>
            </div>
        </li>
        <div class="d-none d-sm-block topbar-divider" id="Header-Divider"></div>
        <li class="nav-item dropdown no-arrow" role="presentation" id="User-Profile-Dropdown">
            <div class="nav-item dropdown no-arrow" id="User-Profile-Frame"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" id="User-Profile-Link" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small" id="User-Message" style="font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 17px;">Hello,&nbsp;<span class="d-none d-lg-inline mr-2 text-gray-600 small" id="Username" style="font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 17px;">Patrick</span><span class="d-none d-lg-inline mr-2 text-gray-600 small" id="Welcome-ExclPt" style="font-family: ABeeZee, sans-serif;color: rgb(0,0,0);font-size: 17px;">!</span></span><img class="border rounded-circle img-profile" data-bs-hover-animate="tada" id="User-Avatar" src="assets/img/Avatar.jpeg" style="width: 50px;height: 50px;"></a>
                <div
                    class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu" id="UserProfile-DD"><a class="dropdown-item" role="presentation" id="UserProfile-DDItem-Profile" href="#" style="font-family: ABeeZee, sans-serif;"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400" id="UserProfile-DDItem-ProfileIcon"></i>&nbsp;Profile</a>
                    <a
                        class="dropdown-item" role="presentation" id="UserProfile-DDItem-Settings" href="#" style="font-family: ABeeZee, sans-serif;"><i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400" id="UserProfile-DDItem-SettingsIcon"></i>&nbsp;Settings</a>
                        <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" id="UserProfile-DDItem-Logout" href="login.php" style="font-family: ABeeZee, sans-serif;color: rgb(255,15,0);"><img id="UserProfile-DDItem-LogoutIcon" style="width: 15px;height: 15px;margin-right: 8px;" src="assets/img/SYSTIMP/Logout%20(Icon).png">&nbsp;Logout</a></div>
            </div>
        </li>
    </ul>
    </div>
    </nav>
    <div class="container-fluid" id="Page-Content">
        <div id="Breadcrumb-Border" style="width: auto;margin-bottom: 10px;"></div>
        <div class="d-sm-flex align-items-center mb-4" id="Page-Header">
            <h3 class="text-dark mb-0" id="Page-Header-Title" style="color: rgb(0,0,0);font-family: ABeeZee, sans-serif;font-weight: bold;font-size: 35px;">Sales: Add Customer</h3>
        </div>
        <div class="card shadow" id="CustPO_Table" style="margin-right: 8vw;margin-left: 8vw;">
            <div class="card-header py-3" id="Table-Header" style="background-color: rgb(235,235,235);background: linear-gradient(to right, #2657eb, #de6161);">
                <p class="text-center m-0 font-weight-bold" id="Table-HeaderTitle" style="font-size: 30px;font-weight: bold;font-family: 'Open Sans', sans-serif;color: #ffffff;">Customer Details</p>
            </div>
            <div class="card-body" id="Table-Body" style="padding-bottom: 0px;padding-top: 10px;">
                <div class="row" id="Table-PODetails">
                    <div class="col-auto col-md-6 col-xl-4 text-nowrap" id="Table-PODetailCol1" style="padding-top: 12px;padding-bottom: 12px;width: 370px;">
                        <form method="POST">
                        <?php
                            require("connect.php");
                            $query = mysqli_query($DBConnect, "SELECT * FROM customers");
                            while($row = mysqli_fetch_array($query)){
                                $id=$row["custID"] + 1;
                            
                            }
                            
                            echo "<div id='Table-PODetail4' class='dataTables_length' aria-controls='dataTable' style='padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;'><label id='Table-NumLabel' style='margin-top: 0px;margin-bottom: 0px;width: 100%;'>Customer ID:&nbsp;<input class='border rounded border-dark float-right' type='tel' id='Table-NumInput' style='border-radius: 20px;width: 185px;' autocomplete='on' name='CustID' type='text' value='".$id."'readonly></label></div>";
                        ?>
                        <div id="Table-PODetail2" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-NameLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Name:&nbsp;<input class="border rounded border-dark float-right" type="text" id="Table-NameInput" style="border-radius: 20px;margin-left: 0px;width: 185px;" name="CustName" required></label></div>
                        <!-- <div id="Table-PODetail3" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-EmailLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Email:&nbsp;<input class="border rounded border-dark float-right" type="email" id="Table-EmailInput" style="width: 185px;border-radius: 20px;margin-left: 0px;" autocomplete="on" name="CustEmail" required></label></div> -->
            </div>
            <div class="col-auto col-md-6 col-xl-4 text-nowrap" id="Table-PODetailCol2" style="padding-top: 12px;padding-bottom: 12px;">
            <div id="Table-PODetail3" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-EmailLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Email:&nbsp;<input class="border rounded border-dark float-right" type="email" id="Table-EmailInput" style="width: 185px;border-radius: 20px;margin-left: 0px;" autocomplete="on" name="CustEmail" required></label></div>
                <div id="Table-PODetail4" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-NumLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Number:&nbsp;<input class="border rounded border-dark float-right" type="tel" id="Table-NumInput" style="border-radius: 20px;width: 185px;" autocomplete="on" name="CustNum" required></label></div>
                <!-- <div id="Table-PODetail5" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-AddrLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Address:&nbsp;<input class="border rounded border-dark float-right" type="text" id="Table-AddrInput" style="border-radius: 20px;margin-left: 0px;width: 185px;" name="CustAddr" required></label></div> -->
                <!-- <div id="Table-PODetail6" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-MOPLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Mode of Payment:&nbsp;<select class="border rounded border-dark float-right" id="Table-MOPInput" style="width: 185px;border-radius: 20px;height: 28px;" name="CustMOP" required><option value="Cash on Delivery">Cash on Delivery</option><option value="Credit/Debit Card">Credit/Debit Card</option><option value="Online Bank Payment">Online Bank Payment</option><option value="G-Cash">G-Cash</option><option value="Shopee Pay">Shopee Pay</option></select></label></div> -->
                
    </div>
    <div class="col-auto col-md-6 col-xl-4 text-nowrap" id="Table-PODetailCol3" style="padding-top: 12px;padding-bottom: 12px;">
        <!-- <div id="Table-PODetail7-8" class="dataTables_length" aria-controls="dataTable" style="padding-top: 0px;padding-bottom: 0px;width: 100%;max-width: 360px;">
            <div class="row" id="Table-Detail7-8">
                <div class="col" id="Table-PODetail7"><label class="col-form-label text-center" id="Table-DateOrdLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Date Ordered:&nbsp;<input class="border rounded border-dark float-left" id="Table-DateOrdInput" type="date" style="width: 165px;margin-right: auto;margin-left: auto;border-radius: 20px;" name="CustDateOrd" required></label></div>
                <div class="col" id="Table-PODetail8"><label class="col-form-label text-center" id="Table-DatePickLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Pickup Date:&nbsp;<input class="border rounded border-dark float-left" id="Table-DatePickInput" type="date" style="width: 165px;margin-right: auto;margin-left: auto;border-radius: 20px;" name="CustDatePick" required></label></div>
            </div>
        </div>
        <div id="Table-PODetail9" class="dataTables_length" aria-controls="dataTable" style="padding-top: 5px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-PlatformLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Platform:&nbsp;<select class="border rounded border-dark float-right" id="Table-PlatformInput" style="width: 185px;border-radius: 20px;height: 28px;" name="CustPlatform" required><option value="Facebook /Instagram ">Facebook /Instagram </option><option value="Shopee">Shopee</option></select></label></div>
        <div id="Table-PODetail10" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-CourierLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Courier:&nbsp;<select class="border rounded border-dark float-right" id="Table-CourierInput" style="width: 185px;border-radius: 20px;height: 28px;" name="CustCourier" required><option value="Grab">Grab</option><option value="Lalamove">Lalamove</option><option value="MrSpeedy">MrSpeedy</option><option value="Provided by Shopee">Provided by Shopee</option></select></label></div>
        </div>
        </div> -->
        <div id="Table-PODetail5" class="dataTables_length" aria-controls="dataTable" style="padding-top: 10px;padding-bottom: 10px;width: 100%;max-width: 360px;"><label id="Table-AddrLabel" style="margin-top: 0px;margin-bottom: 0px;width: 100%;">Customer Address:&nbsp;<input class="border rounded border-dark float-right" type="text" id="Table-AddrInput" style="border-radius: 20px;margin-left: 0px;width: 185px;" name="CustAddr" required></label></div>
    </div>
        
                        <?php
                            require("connect.php");
                            if(isset ($_POST["confirmpo"])){
                                $custID = $_POST["CustID"];
                                $custname = $_POST["CustName"];
                                $custemail = $_POST["CustEmail"];
                                $custnumber = $_POST["CustNum"];
                                $custaddress = $_POST["CustAddr"];
                                $add = "INSERT INTO customers (custID, custName, custEmail, custNumber, custAddress) 
                                    VALUES ('$custID', '$custname', '$custemail', '$custnumber', '$custaddress')";
                                mysqli_query($DBConnect, $add) or die (mysqli_error($DBConnect));
                                echo "<script type='text/javascript'> document.location = 'customerpo2.php'; </script>";

                            }
                        ?>
                        
                    </tbody>
                   
                </table>
            </div>
            
            <div class="row" id="Table-Button-Row">
                <div class="col-lg-3 col-xl-2 offset-lg-6 offset-xl-7" id="ClearFields-Column">
                    <div id="Clear"><input class="btn btn-danger float-right" type="reset" value="Clear Fields" role="button" id="ClearButton" data-toggle="modal" href="#ClearPopup" style="font-family: 'Open Sans', sans-serif;font-weight: normal;border-radius: 50px 10px;padding-right: 25px;padding-left: 25px;border-width: 2px;"></input>
                        
                </div>
            </div>
            <div class="col" id="ConfirmPO-Column">
                <div id="Confirm"><button class="btn btn-success float-right" type="submit" name="confirmpo"  id="ConfirmButton" data-toggle="modal" style="font-family: 'Open Sans', sans-serif;font-weight: normal;border-radius: 50px 10px;padding-right: 25px;padding-left: 25px;border-width: 2px;">Save</button>
                    
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
        <div></div>
        </div>
        <div></div>
        </div>
        <footer class="bg-white sticky-footer" id="Footer" style="background: linear-gradient(to bottom, rgba(255, 255, 255, 0.5), rgba(148, 148, 148, 0.5));">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>LazeRosa Systems || by Group 3</span></div>
            </div>
        </footer>
        </div><a class="border rounded d-inline scroll-to-top" id="Pagetop-Button" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/chart.min.js"></script>
        <script src="assets/js/bs-init.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
        <script src="assets/js/theme.js"></script>
        <script src="assets/js/custom3.js"></script>
</body>

</html>