<section class="section__area">
  <div class="container">
    <div class="section-title">
      <h2>{{ __('Campaign') }}</h2>
    </div>

    @if ($new_campaign->count())
    <div id="campaignCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        @foreach ($new_campaign as $index => $campaign)
        <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
          <div class="product__item text-center">
            {{-- Countdown Timer --}}
            <div class="mt-4 mb-4">
              @if ($campaign->end_date)
              <div class="campaign-countdown mt-2"
                data-end-date="{{ \Carbon\Carbon::parse($campaign->end_date)->format('Y-m-d H:i:s') }}">
                <h3><strong>Ends in:</strong>
                  <span class="countdown-timer text-danger fw-bold"></span>
                </h3>
              </div>
              @endif
            </div>
            {{-- Campaign Banner --}}
            <a href="{{route('campaing.index', $campaign->id)}}"><img src="{{ asset($campaign->banner) }}" width="80%"
                alt="img" class="img-fluid w-80"></a>

          </div>
        </div>
        @endforeach
      </div>

      {{-- Carousel Controls --}}
      @if ($new_campaign->count() > 1)
      <button class="carousel-control-prev" type="button" data-bs-target="#campaignCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#campaignCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
      @endif
    </div>
    @else
    <p class="text-muted text-center">No active campaigns available.</p>
    @endif
  </div>
</section>

<script>
document.addEventListener("DOMContentLoaded", function() {
  function countdown(element, endDate) {
    function update() {
      const now = new Date().getTime();
      const end = new Date(endDate).getTime();
      const diff = end - now;

      if (diff <= 0) {
        element.innerHTML = "Campaign has ended!";
        clearInterval(timer);
        return;
      }

      const days = Math.floor(diff / (1000 * 60 * 60 * 24));
      const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
      const seconds = Math.floor((diff % (1000 * 60)) / 1000);

      element.innerHTML = `${days}d ${hours}h ${minutes}m ${seconds}s`;
    }

    update();
    const timer = setInterval(update, 1000);
  }

  document.querySelectorAll('.campaign-countdown').forEach(function(countdownEl) {
    const endDate = countdownEl.getAttribute('data-end-date');
    const timerElement = countdownEl.querySelector('.countdown-timer');
    countdown(timerElement, endDate);
  });
});
</script>