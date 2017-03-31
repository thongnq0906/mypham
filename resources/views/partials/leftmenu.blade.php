<div class="col-sm-3" id="box-vertical-megamenus">
    <div class="box-vertical-megamenus">
        <h4 class="title">
            <span class="title-menu">DANH MỤC SẢN PHẨM</span>
            <span class="btn-open-mobile pull-right"><i class="fa fa-bars"></i></span>
        </h4>
        <div class="vertical-menu-content is-home">
            <ul class="vertical-menu-list">
                @foreach(Menu::getAll() as $item)
                    <li>
                        <a @if($item['items'] != null) class="parent" @endif href="{{ url( 'category/' . $item['id'] ) }}">
                            <img class="icon-menu" alt="{{ $item['name'] }}" src="{{url('assets/data/1.png')}}">{{ $item['name'] }}
                        </a>
                        @if($item['items'] != null)
                            <div class="vertical-dropdown-menu" style="width: 900px;">
                                <div class="vertical-groups col-sm-12">
                                    <div class="mega-group col-sm-4">
                                        @foreach($item['items'] as $subKey => $sub)
                                            {{--<h4 class="mega-group-header"><span>Tennis</span></h4>--}}
                                            <ul class="group-link-default">
                                                <li><a href="{{ url( 'category/' . $sub['id'] ) }}">{{ $sub['name'] }}</a>
                                                    {{--@foreach($item['items'] as $subkeyn => $subn)--}}
                                                        {{--<h4 class="mega-group-header"><span>Tennis</span></h4>--}}
                                                        {{--<ul class="group-link-default">--}}
                                                            {{--<li><a href="{{ url( 'category/' . $subn['id'] ) }}">{{ $subn['name'] }}</a></li>--}}
                                                            {{--@if(($subkeyn + 1) % 6 == 0)--}}
                                                                {{--{{ '</div><div class="vertical-groups col-sm-12">'  }}--}}
                                                            {{--@endif--}}
                                                        {{--</ul>--}}
                                                    {{--@endforeach--}}
                                                </li>
                                            </ul>
                                            @if(($subKey + 1) % 4 == 0)
                                                </div><div class="mega-group col-sm-4">
                                            @endif
                                        @endforeach
                                    </div>
                                    {{--<div class="mega-custom-html col-sm-12">
                                        <a href="#"><img src="assets/data/banner-megamenu.jpg" alt="Banner"></a>
                                    </div>--}}
                                </div>
                            </div>
                        @endif
                    </li>
                @endforeach
            </ul>
            <div class="all-category"><span class="open-cate">Tất cả danh mục</span></div>
        </div>
    </div>
</div>
