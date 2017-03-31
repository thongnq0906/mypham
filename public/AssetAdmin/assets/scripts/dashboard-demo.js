$(function () {
    //  morris Area chart on dashboard///

    $.ajax({
        url: APP_URL + 'admin/statistic',
        type: 'GET',
        success: function (data) {
            Morris.Area({
                element: 'morris-area-chart',
                data: data,
                xkey: 'period',
                ykeys: ['daxuly', 'dabihuy', 'tongso'],
                labels: ['Đã Xử Lý', 'Đã Bị Hủy', 'Tổng Số'],
                pointSize: 2,
                hideHover: 'auto',
                resize: true
            });
        },
        error: function (xhr) {
            console.log(xhr);
        }
    });
});
