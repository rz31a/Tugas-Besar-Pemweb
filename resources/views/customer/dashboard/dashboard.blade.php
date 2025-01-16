@extends('customer.layout.master');

@section('content')
    <div class="container-fluid">
        {{-- <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="row">
                        <div class="col align-self-center">
                            <h4 class="page-title pb-md-0">Dashboard</h4>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                        </div>
                        <!--end col-->
                        <div class="col-auto align-self-center">
                            <a href="#" class="btn btn-sm btn-outline-primary" id="Dash_Date">
                                <span class="day-name" id="Day_Name">Today:</span>&nbsp;
                                <span class="" id="Select_date">
                                    @php
                                        echo date('d M');
                                    @endphp
                                </span>
                                <i data-feather="calendar" class="align-self-center icon-xs ms-1"></i>
                            </a>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
                <!--end page-title-box-->
            </div>
            <!--end col-->
        </div> --}}

        <div class="container"> 
    <div class="row mt-4"> 
        <div class="col-md-12"> 
            <div class="row d-flex justify-content-center"> 
                <div class="col-lg-5 offset-lg-1 align-self-center"> 
                    <div class="p-5"> 
                        <h1 class="my-4 font-weight-bold">Selamat Datang Di <span class="text-primary">FootGear</span></h1> 
                        <p class="font-14 text-muted">Selamat datang di FootGear, destinasi utama untuk semua kebutuhan alas kaki Anda.
                        Kami menyediakan berbagai koleksi sepatu berkualitas tinggi untuk pria, wanita, dan anak-anak 
                        dengan gaya yang selalu mengikuti tren terkini.Di FootGear, kami memahami bahwa setiap langkah Anda adalah cerminan gaya hidup modern.</p> 
                    </div> 
                </div> 
            </div> 
        </div> 
    </div> 
</div>
        {{-- <div class="row">
            @php
                function rupiah($angka)
                {
                    $hasil_rupiah = 'Rp ' . number_format($angka, 2, ',', '.');
                    return $hasil_rupiah;
                }
            @endphp
            @foreach ($produk as $data)
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="ribbon1 rib1-danger">
                                <span class="text-white text-center rib1-danger">New</span>
                            </div>
                            <!--end ribbon-->
                            <img src="/produk/{{ $data->foto_produk }}" alt="" class="d-block mx-auto my-4"
                                height="150">
                            <div class="d-flex justify-content-between align-items-center my-4">
                                <div>
                                    <p class="text-muted mb-2">{{ Str::title($data->nama_kategori) }}</p>
                                    <a href="#" class="header-title">{{ Str::title($data->nama_produk) }}</a>
                                </div>
                                <div>
                                    <h4 class="text-dark mt-0 mb-2">{{ rupiah($data->harga_produk) }}</h4>
                                </div>
                            </div>
                            <div class="d-grid">
                                <button class="btn btn-de-warning">Masukan Keranjang</button>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div> --}}
    </div>
@endsection

@section('css')
    <link href="/metrica/dist/assets/libs/@midzer/tobii/tobii.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('js')
    <script src="/metrica/dist/assets/libs/shufflejs/shuffle.min.js"></script>
    <script src="/metrica/dist/assets/libs/@midzer/tobii/tobii.min.js"></script>
    <script src="/metrica/dist/assets/JS/pages/gallery.init.js"></script>
@endsection
