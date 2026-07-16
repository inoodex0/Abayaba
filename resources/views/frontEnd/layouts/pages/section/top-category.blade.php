    <section class="category__area">
      <div class="container">
        <div class="category__wrapper">
          @foreach ($menucategories->take(8) as $key=>$value)
          <a href="{{ route('category', $value->slug) }}" class="category__item">
            <div class="category__img">
              <img src="{{ asset($value->image) }}" alt="{{$value->name}}" />
            </div>

            <h5>{{Str::limit($value->name, 30)}}</h5>

          </a>
          @endforeach
        </div>
      </div>
    </section>