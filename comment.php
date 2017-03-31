 <div id="comment-container" >
                                @if($comments)
                                    @foreach($comments as $comment)
                                        <div class="comment-item">
                                            <div class="user-name">
                                                <img style="width: 25px; height: 25px;" src="{{url('img/'.$comment->user->avata)}}">
                                                <span style="color:blue; font-size: 16px">{{$comment->user->name}}</span>
                                            </div>
                                            <div class="commnet-content" >
                                                {{$comment->content}}
                                                <br>
                                                <a href="javascript:;" class="rep" style="font-size: 12px">Trả lời</a>
                                                <a href="javascript:;" class="hiderep" style="font-size: 12px; display: none">Ân trả lời</a>
                                                <div class="rep-container" style="display: none;">
                                                    <div class="rep-item" id="{{$comment->id}}">
                                                        @if($repComment)
                                                            @foreach($repComment as $item)
                                                                @foreach($item as $rep)
                                                                    @if($rep->comment_id == $comment->id)
                                                                            <div>
                                                                                <img style="width: 25px; height: 25px;" src="{{url('img/'.$rep->user->avata)}}">
                                                                                <span style="color:blue; font-size: 16px">{{$rep->user->name}}</span>
                                                                                {{$rep->content}}
                                                                            </div>
                                                                    @endif
                                                                @endforeach
                                                            @endforeach
                                                        @endif
                                                    </div>


                                                    @if(!Auth::guest())
                                                        <div class="rep-cmt">
                                                            {{Form::open(['method' => 'POST', 'url' => 'rep', 'id' => "repform-$comment->id"])}}
                                                            <input type="hidden" name="comment_id" value="{{$comment->id}}">
                                                            <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                                                            <input type="hidden" name="username" value="{{Auth::user()->name}}">
                                                            <input type="hidden" name="avatar" value="{{Auth::user()->avata}}">
                                                            <input type="text" name="contents" class="form-control rep-comment" style="width: 300px">
                                                            <input type="submit" value="">
                                                            {{Form::close()}}
                                                        </div>
                                                    @endif
                                                </div>
                                            </div>
                                            @if(!Auth::guest())

                                                <div class="delete-comment">
                                                    {{Form::open(['method' => 'DELETE', 'url' => 'comment/'.$comment->id])}}
                                                    <a href="javascript:" class="delete">Delete</a>
                                                    {{Form::close()}}
                                                </div>
                                            @endif
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                            @if(!Auth::guest())
                                <div id="comment-form">
                                    {{Form::open(['method' => 'POST', 'url' => 'comment', 'id' => 'form-comment'])}}
                                    <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                                    <input type="hidden" name="username" value="{{Auth::user()->name}}">
                                    <input type="hidden" name="product_id" value="{{$product->id}}">
                                    <input type="text" name="contents" class="form-control" style="width: 70%" id="comment-content">
                                    <button type="submit" class="btn btn-primary" id="btn-submit">Comment</button>
                                    {{Form::close()}}
                                </div>
                        @endif