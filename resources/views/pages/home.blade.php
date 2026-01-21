@extends('layouts.app')

@section('content')
   <div id="Background"
    class="absolute top-0 w-full h-[280px] rounded-bl-[75px]"
    style="background: linear-gradient(180deg, #8A2BE2 0%, #6A1B9A 100%);">
</div>
    <div id="TopNav" class="relative flex items-center justify-between px-5 mt-[60px]">
            <div class="flex flex-col gap-1">
                <p>Good day,</p>
                <h1 class="font-bold text-xl leading-[30px]">Explore Cozy Home</h1>
            </div>
            <a href="#"
                class="w-12 h-12 flex items-center justify-center shrink-0 rounded-full overflow-hidden bg-white">
                <img src="assets/images/icons/notification.svg" class="w-[28px] h-[28px]" alt="icon">
            </a>
        </div>
        <div id="Categories" class="swiper w-full overflow-x-hidden mt-[30px]">
            <div class="swiper-wrapper">
                @foreach($categories as $category)
                    <div class="swiper-slide !w-fit pb-[30px]">
                        <a href="{{ route('category.show', $category->slug) }}" class="card">
                            <div class="flex flex-col items-center w-[120px] shrink-0 rounded-[40px] p-4 pb-5 gap-3 bg-white shadow-[0px_12px_30px_0px_#0000000D] text-center transition-all duration-300"
                            style="border: 2px solid transparent; cursor: pointer;"
                            onmouseover="this.style.border='2px solid #8A2BEF'" 
                            onmouseout="this.style.border='2px solid transparent'">
                            <div class="w-[70px] h-[70px] rounded-full flex shrink-0 overflow-hidden">
                                    <img src="{{ url('storage/private/' . $category->image) }}" class="w-full h-full object-cover"
                                        alt="thumbnail">
                                </div>
                                <div class="flex flex-col gap-[2px]">
                                    <h3 class="font-semibold">{{ $category->name }}</h3>
                                    <p class="text-sm text-ngekos-grey">{{ $category->boardinghouses->count() ?? 0 }} Kos</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
       <section id="Popular" class="flex flex-col gap-4">
    <div class="flex items-center justify-between px-5">
        <h2 class="font-bold">Popular Kos</h2>
        <a href="#">
            <div class="flex items-center gap-2">
                <span style="color: #8A2BEF;" class="font-semibold">See all</span>
                <img src="assets/images/icons/arrow-right.svg" class="w-6 h-6 flex shrink-0" alt="icon">
            </div>
        </a>
    </div>
    <div class="swiper w-full overflow-x-hidden">
        <div class="swiper-wrapper">
            @forelse($popolarBoardingHouses as $boarding)
                <div class="swiper-slide !w-fit ml-5 last:mr-5">
                    <a href="{{ route('boarding-house.show', $boarding->slug) }}" class="card">
                        <div class="flex flex-col w-[250px] shrink-0 rounded-[30px] p-4 pb-5 gap-[10px] bg-white transition-all duration-300"
                             style="border: 2px solid #F1F2F6; cursor: pointer;"
                             onmouseover="this.style.border='2px solid #8A2BEF'" 
                             onmouseout="this.style.border='2px solid #F1F2F6'">
                            
                            <div class="flex w-full h-[150px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                                <img src="{{ url('storage/private/' . $boarding->thumbnail) }}" class="w-full h-full object-cover" alt="thumbnail">
                            </div>
                            
                            <div class="flex flex-col gap-3">
                                <h3 class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">{{ $boarding->name }}</h3>
                                <hr class="border-[#F1F2F6]">
                                
                                <div class="flex items-center gap-[6px]">
                                    <img src="assets/images/icons/location.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                                    <p class="text-sm text-ngekos-grey">{{ $boarding->city->name }}</p>
                                </div>
                                <div class="flex items-center gap-[6px]">
                                    <img src="assets/images/icons/3dcube.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                                    <p class="text-sm text-ngekos-grey">{{ $boarding->category->name }}</p>
                                </div>
                                <div class="flex items-center gap-[6px]">
                                    <img src="assets/images/icons/profile-2user.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                                    <p class="text-sm text-ngekos-grey">{{ $boarding->rooms->count() }} Rooms</p>
                                </div>
                                
                                <hr class="border-[#F1F2F6]">
                                
                                <p class="font-bold text-lg" style="color: #8A2BEF;">
                                    Rp {{ number_format($boarding->price, 0, ',', '.') }}
                                    <span class="text-sm text-ngekos-grey font-normal">/bulan</span>
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
            @empty
                <div class="px-5">
                    <p class="text-ngekos-grey">No boarding houses available</p>
                </div>
            @endforelse
        </div>
</section>

<section id="Cities" class="flex flex-col p-5 gap-4 bg-[#F5F6F8] mt-[30px]">
    <div class="flex items-center justify-between">
        <h2 class="font-bold">Browse Cities</h2>
        <a href="#">
            <div class="flex items-center gap-2">
                <span style="color: #8A2BEF;" class="font-semibold">See all</span>
                <img src="assets/images/icons/arrow-right.svg" class="w-6 h-6 flex shrink-0" alt="icon">
            </div>
        </a>
    </div>

    <div class="grid grid-cols-2 gap-4">
        @forelse($cities as $city)
            <a href="{{ route('city.show', ['slug' => $city->slug]) }}" class="card">
                <div class="flex items-center rounded-[22px] p-[10px] gap-3 bg-white transition-all duration-300"
                    style="border: 2px solid white; cursor: pointer;"
                    onmouseover="this.style.border='2px solid #8A2BEF'" 
                    onmouseout="this.style.border='2px solid white'">
                    
                    <div class="w-[55px] h-[55px] flex shrink-0 rounded-full border-4 border-white ring-1 ring-[#F1F2F6] overflow-hidden">
                        <img src="{{ url('storage/private/' . $city->image) }}" class="w-full h-full object-cover" alt="icon">
                    </div>
                    
                    <div class="flex flex-col gap-[2px]">
                        <h3 class="font-semibold text-sm">{{ $city->name }}</h3>
                        <p class="text-[11px] text-ngekos-grey">{{ $city->boardinghouses->count() ?? 0 }} Kos</p>
                    </div>
                </div>
            </a>
        @empty
            <div class="col-span-2">
                <p class="text-ngekos-grey text-center">No cities available</p>
            </div>
        @endforelse
    </div>
</section>
        <section id="Best" class="flex flex-col gap-4 px-5 mt-[30px] pb-20">
    <div class="flex items-center justify-between">
        <h2 class="font-bold">All Great Koskos</h2>
        <a href="#">
            <div class="flex items-center gap-2">
                <span style="color: #8A2BEF;" class="font-semibold">See all</span>
                <img src="assets/images/icons/arrow-right.svg" class="w-6 h-6 flex shrink-0" alt="icon">
            </div>
        </a>
    </div>

    <div class="flex flex-col gap-4">
        @forelse($boardingHouses as $boarding)
            <a href="{{ route('boarding-house.show', $boarding->slug) }}" class="card">
                <div class="flex rounded-[30px] p-4 gap-4 bg-white transition-all duration-300"
                    style="border: 2px solid #F1F2F6; cursor: pointer;"
                    onmouseover="this.style.border='2px solid #8A2BEF'" 
                    onmouseout="this.style.border='2px solid #F1F2F6'">
                    
                    <div class="flex w-[120px] h-[183px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                        <img src="{{ url('storage/private/' . $boarding->thumbnail) }}" class="w-full h-full object-cover" alt="thumbnail">
                    </div>
                    
                    <div class="flex flex-col gap-3 w-full">
                        <h3 class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">{{ $boarding->name }}</h3>
                        <hr class="border-[#F1F2F6]">
                        
                        <div class="flex items-center gap-[6px]">
                            <img src="assets/images/icons/location.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                            <p class="text-sm text-ngekos-grey">{{ $boarding->city->name }}</p>
                        </div>
                        <div class="flex items-center gap-[6px]">
                            <img src="assets/images/icons/profile-2user.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                            <p class="text-sm text-ngekos-grey">{{ $boarding->rooms->count() }} Rooms</p>
                        </div>
                        
                        <hr class="border-[#F1F2F6]">
                        
                        <p class="font-bold text-lg" style="color: #8A2BEF;">
                            Rp {{ number_format($boarding->price, 0, ',', '.') }}
                            <span class="text-sm text-ngekos-grey font-normal">/bulan</span>
                        </p>
                    </div>
                </div>
            </a>
        @empty
            <p class="text-ngekos-grey text-center">No boarding houses available</p>
        @endforelse
    </div>
</section>
    
        @include('includes.navigation')
@endsection
