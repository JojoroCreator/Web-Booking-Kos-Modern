@extends('layouts.app')

@section('content')
    <div id="Background"
        class="absolute top-0 w-full h-[430px] rounded-b-[75px]"
        style="background: linear-gradient(180deg, #8A2BEF 0%, #5D12AB 100%);">
    </div>

    <div class="relative flex flex-col gap-[30px] my-[60px] px-5">
    <h1 class="font-bold text-[30px] leading-[45px] text-center text-white">
        Explore Our<br>Beautiful Koskos
    </h1>
        
        <form action="{{ route('find-kos.result') }}" method="GET"
            class="flex flex-col rounded-[30px] border border-[#F1F2F6] p-5 gap-6 bg-white shadow-xl">
            <div id="InputContainer" class="flex flex-col gap-[18px]">
                
                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Name</p>
                    <label
                        class="search-label flex items-center w-full rounded-full p-[14px_20px] gap-3 bg-white ring-1 ring-[#F1F2F6] transition-all duration-300">
                        <img src="assets/images/icons/note-favorite-grey.svg" class="w-5 h-5 flex shrink-0" alt="icon">
                        <input type="text" name="search"
                            class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"
                            placeholder="Type the koskos name">
                    </label>
                </div>

                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Choose City</p>
                    <label
                        class="search-label relative flex items-center w-full rounded-full p-[14px_20px] gap-2 bg-white ring-1 ring-[#F1F2F6] transition-all duration-300">
                        <img src="assets/images/icons/location.svg"
                            class="absolute w-5 h-5 flex shrink-0 transform -translate-y-1/2 top-1/2 left-5"
                            alt="icon">
                        <select name="city" class="appearance-none outline-none w-full bg-white pl-8 font-semibold">
                            <option value="" hidden>Select city</option>
                            @foreach ($cities as $city)
                                <option value="{{ $city->slug }}">{{ $city->name }}</option>                                
                            @endforeach
                        </select>
                        <img src="assets/images/icons/arrow-down.svg" class="w-5 h-5" alt="icon">
                    </label>
                </div>

                <div class="flex flex-col w-full gap-2">
                    <p class="font-semibold">Choose Category</p>
                    <label
                        class="search-label relative flex items-center w-full rounded-full p-[14px_20px] gap-2 bg-white ring-1 ring-[#F1F2F6] transition-all duration-300">
                        <img src="assets/images/icons/location.svg"
                            class="absolute w-5 h-5 flex shrink-0 transform -translate-y-1/2 top-1/2 left-5"
                            alt="icon">
                        <select name="category" class="appearance-none outline-none w-full bg-white pl-8 font-semibold">
                            <option value="" hidden>Select category</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->slug }}">{{ $category->name }}</option>                                
                            @endforeach
                        </select>
                        <img src="assets/images/icons/arrow-down.svg" class="w-5 h-5" alt="icon">
                    </label>
                </div>

                <button type="submit"
                    class="flex w-full justify-center rounded-full p-[14px_20px] font-bold text-white transition-all duration-300 hover:shadow-[0px_10px_20px_0px_#8A2BEF66]"
                    style="background-color: #8A2BEF;">
                    Explore Now
                </button>
            </div>
        </form>
    </div>

    @include('includes.navigation')

    <style>
        /* Fokus & Hover serba Ungu */
        .search-label:focus-within {
            --tw-ring-color: #8A2BEF !important;
            border-color: #8A2BEF !important;
            ring-color: #8A2BEF !important;
        }

        .search-label:hover {
            border-color: #8A2BEF !important;
            --tw-ring-color: #8A2BEF !important;
        }

      
    </style>
@endsection