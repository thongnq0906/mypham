<script src="{{url('AssetAdmin/assets/plugins/jquery-1.10.2.js')}}"></script>
<script src="{{url('AssetAdmin/assets/plugins/bootstrap/bootstrap.min.js')}}"></script>
<script src="{{url('AssetAdmin/assets/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{url('AssetAdmin/assets/plugins/pace/pace.js')}}"></script>
<script src="{{url('AssetAdmin/assets/scripts/siminta.js')}}"></script>
<!-- Page-Level Plugin Scripts-->
<script src="{{url('AssetAdmin/assets/plugins/morris/raphael-2.1.0.min.js')}}"></script>
<script src="{{url('AssetAdmin/assets/plugins/morris/morris.js')}}"></script>
<script src="{{url('AssetAdmin/assets/scripts/dashboard-demo.js')}}"></script>
<script type="text/javascript" src="{{ url('ckeditor/ckeditor.js') }}"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
            'Cache-Control': 'no-cache',
            'Pragma': 'no-cache'
        }
    });

    $(document).ready(function () {
        $('.frmRemove').on('submit', function (e) {
            e.preventDefault();
            $.ajax({
                url: $(this).attr('action'),
                type: 'POST',
                data: $(this).serialize(),
                success: function (data) {
                    console.log(data);
                }
            });
            $(this).remove();
        });
    });

</script>
