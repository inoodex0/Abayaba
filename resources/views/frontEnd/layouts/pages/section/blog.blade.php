    <section class="section__area">
        <div class="container">
            <div class="product__title2">
                <h3>{{ __('Our Blog') }}</h3>
                <a href="{{ route('all.blogs') }}">View All</a>
            </div>
            <div class="luxe-art">
                @foreach ($blogs as $blog)
                    <div class="product__item">
                        <div class="product__img">
                            <a href="{{ route('blog_details', $blog->slug) }}">
                                <img src="{{ asset($blog->image ? $blog->image : '') }}" alt="" />
                            </a>
                        </div>
                        <div class="product__content">
                            <h4>
                                <a href="{{ route('blog_details', $blog->slug) }}">{{ Str::limit($blog->title, 40) }}</a>
                            </h4>
                             
                                <div class="post__meta">
                                    <span>{{ $blog->created_at->format('d M, Y') }}</span>
                                    <span class="post_btn">{{ $blog->category->name }}</span>
                                </div>
                            
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
