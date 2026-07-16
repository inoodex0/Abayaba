<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="profile__btn " id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home"
        type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">
        Dashboard
    </button>
    <button class="profile__btn" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile"
        type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
        Orders
    </button>
    <button class="profile__btn" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages"
        type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">
        Account Details
    </button>
    <button class="profile__btn" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings"
        type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
        Change Password
    </button>
    <button class="profile__btn" type="button" role="tab">
        <a href="{{ route('customer.logout') }}"
            onclick="event.preventDefault();
            document.getElementById('logout-form').submit();"><i data-feather="log-out"></i> Logout</a>
        <form id="logout-form" action="{{ route('customer.logout') }}" method="POST" style="display: none;">
                @csrf
        </form>
    </button>
</div>
