<link href="https://demo.dashboardpack.com/architectui-html-free/main.css" rel="stylesheet">
<link rel="stylesheet" href="./styles/DashboardStyles.css">

<?php
// Kết nối CSDL
$mysqli = new mysqli("localhost", "root", "", "shoesland");
if ($mysqli->connect_error) {
    die("Kết nối thất bại: " . $mysqli->connect_error);
}

// Truy vấn tổng số đơn hàng và tổng doanh thu
$sql = "
    SELECT 
        COUNT(DISTINCT o.id) AS total_orders,
        SUM(od.quantity * od.unit_price + o.delivery_cost) AS total_revenue
    FROM tbl_order o
    JOIN tbl_order_detail od ON o.id = od.order_id
    WHERE o.status_id = '2fb6fe9b-c49c-4358-8dc1-943e20f5f094'
";


// Thực thi truy vấn
$result = $mysqli->query($sql);

if ($result && $row = $result->fetch_assoc()) {

} else {
    echo "Không có dữ liệu.";
}

// Truy vấn tổng số sản phẩm (tổng tồn kho)
$sql2 = "SELECT COUNT(id) AS total_quantity FROM tbl_product";

// Thực thi truy vấn
$result2 = $mysqli->query($sql2);

if ($result2 && $row2 = $result2->fetch_assoc()) {
} else {
    echo "Không có dữ liệu.";
}

// Truy vấn tổng số khách hàng
$sql3 = "SELECT COUNT(id) AS total_user FROM tbl_user";

// Thực thi truy vấn
$result3 = $mysqli->query($sql3);

if ($result3 && $row3 = $result3->fetch_assoc()) {
} else {
    echo "Không có dữ liệu.";
}

// Truy vấn doanh thu và đơn hàng theo tháng
$sql_chart = "
    SELECT 
        MONTH(o.createDate) AS month,
        COUNT(DISTINCT o.id) AS total_orders,
        SUM(od.quantity * od.unit_price + o.delivery_cost) AS total_revenue
    FROM tbl_order o
    JOIN tbl_order_detail od ON o.id = od.order_id
    WHERE o.status_id = '2fb6fe9b-c49c-4358-8dc1-943e20f5f094'
    GROUP BY MONTH(o.createDate)
    ORDER BY MONTH(o.createDate)
";


$result_chart = $mysqli->query($sql_chart);

// Khởi tạo mảng dữ liệu
$months = [];
$revenues = [];
$orders = [];

for ($i = 1; $i <= 12; $i++) {
    $months[] = 'Tháng ' . $i;
    $revenues[$i] = 0;
    $orders[$i] = 0;
}

while ($row_chart = $result_chart->fetch_assoc()) {
    $month = (int)$row_chart['month'];
    $revenues[$month] = (float)$row_chart['total_revenue'];
    $orders[$month] = (int)$row_chart['total_orders'];
}

// Chuyển về dạng mảng tuần tự
$revenues_data = [];
$orders_data = [];
foreach (range(1, 12) as $i) {
    $revenues_data[] = $revenues[$i];
    $orders_data[] = $orders[$i];
}



// Đóng kết nối
$mysqli->close();
?>


<div>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-main__inner">
            <div class="row mb-3">
                <div class="col-md-6 col-xl-3">
                    <div class="card widget-content bg-midnight-bloom">
                        <div class="widget-content-wrapper text-white">
                            <div class="widget-content-left">
                                <div class="widget-heading">Total Order</div>
                        
                            </div>
                            <div class="widget-content-right">
                                <div class="widget-numbers text-white"><span><?= $row['total_orders']?></span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="card widget-content bg-arielle-smile">
                        <div class="widget-content-wrapper text-white">
                            <div class="widget-content-left">
                                <div class="widget-heading">Total Revenue</div>
                                
                            </div>
                            <div class="widget-content-right">
                                <div class="widget-numbers text-white"><span><?= number_format($row['total_revenue'], 0, ',', '.')?></span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="card widget-content bg-grow-early">
                        <div class="widget-content-wrapper text-white">
                            <div class="widget-content-left">
                                <div class="widget-heading">Total Product Types</div>
                        
                            </div>
                            <div class="widget-content-right">
                                <div class="widget-numbers text-white"><span><?= $row2['total_quantity']?></span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="card widget-content bg-premium-dark">
                        <div class="widget-content-wrapper text-white">
                            <div class="widget-content-left">
                                <div class="widget-heading">Total Customers</div>
                              
                            </div>
                            <div class="widget-content-right">
                                <div class="widget-numbers text-warning"><span><?= $row3['total_user']?></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div>
                    <div class="card mh-100">
                        <div class="card-header-tab card-header-tab-animation card-header">
                            <div class="card-header-title">
                                <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"> </i>
                                Sales Report
                            </div>
                        </div>
                            <!-- HTML Canvas -->
                            <canvas id="revenueChart" width="600" height="400"></canvas>

                            <!-- Thêm Chart.js -->
                            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                            <!-- Vẽ biểu đồ -->
                            <script>
  const ctx = document.getElementById('revenueChart').getContext('2d');
const revenueChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: <?= json_encode($months) ?>,
        datasets: [
            {
                label: 'Tổng doanh thu (VND)',
                data: <?= json_encode($revenues_data) ?>,
                backgroundColor: 'rgba(75, 192, 192, 0.6)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            },
            {
                label: 'Tổng số đơn hàng',
                data: <?= json_encode($orders_data) ?>,
                backgroundColor: 'rgba(16, 241, 54, 0.6)',
                borderColor: 'rgb(75, 233, 13)',
                borderWidth: 1
            }
        ]
    },
    options: {
        responsive: true,
        scales: {
            y: {
                beginAtZero: true,
                ticks: {
                    callback: function(value) {
                        return value.toLocaleString() + '';
                    }
                }
            }
        }
    }
});

                            </script>
                    </div>
                </div>
        </div>  
    </div>
</div>