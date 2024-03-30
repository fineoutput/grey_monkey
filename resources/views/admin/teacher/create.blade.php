@extends('admin.base_template')
@section('title',$title)
@section('main')
<style>
    .select2-container--default.select2-container--focus .select2-selection--multiple {
        border: 1px solid #495057 !important;
        border-top: none !important;
        border-left: none !important;
        border-right: none !important;
        border-radius: 0 !important;
    }
</style>
<!-- Start content -->
<div class="content">
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <h4 class="page-title">{{$title}}</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('teachers.index')}}">Teachers</a></li>
                        <li class="breadcrumb-item active">{{$title}}</li>
                    </ol>
                    <div class="state-information d-none d-sm-block">
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->
        <style>
            .form-control {
                border-top: none !important;
                border-left: none !important;
                border-right: none !important;
                border-radius: 0 !important;
            }

            .form-floating>.form-control,
            .form-floating>.form-control-plaintext,
            .form-floating>.form-select {
                height: calc(2.7rem + 2px) !important;
            }
        </style>
        <div class="page-content-wrapper">
            <div class="row">
                <div class="col-12">
                    <div class="card m-b-20">
                        <div class="card-body">
                            <!-- show success and error messages -->
                            @if (session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                            </div>
                            @endif
                            @if (session('error'))
                            <div class="alert alert-danger" role="alert">
                                {{ session('error') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                            </div>
                            @endif
                            <!-- End show success and error messages -->

                            <h4 class="mt-0 header-title">{{$title}} Form</h4>
                            <hr style="margin-bottom: 50px;background-color: darkgrey;">
                            <form action="{{route('teachers.store')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$data->id}}">
                                <div class="form-group row">
                                    <div class="col-sm-6 my-3" style="margin-top: 23px!important">
                                        <div class="form-floating">
                                            <input type="text" class="form-control @error('name') is-invalid @enderror" value="{{old('name') ? old('name') : $data->name}}" id="name" name="name" placeholder="Enter name">
                                            <label for="name">Enter Name &nbsp;<span style="color:red;">*</span></label>
                                        </div>
                                        @error('name')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3" style="margin-top: 23px!important">
                                        <div class="form-floating">
                                            <input type="text" class="form-control @error('phone') is-invalid @enderror" value="{{old('phone') ? old('phone') : $data->phone}}" id="phone" name="phone" placeholder="Enter Phone" onkeypress="return isNumberKey(event)" maxlength="10" minlength="10">
                                            <label for="phone">Enter Phone &nbsp;<span style="color:red;">*</span></label>
                                        </div>
                                        @error('phone')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3" style="margin-top: 23px!important">
                                        <div class="form-floating">
                                            <input type="email" class="form-control @error('email') is-invalid @enderror" value="{{old('email') ? old('email') : $data->email}}" id="email" name="email" placeholder="Enter Email">
                                            <label for="email">Enter Email &nbsp;<span style="color:red;">*</span></label>
                                        </div>
                                        @error('email')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3" style="margin-top: 23px!important">
                                        <div class="form-floating">
                                            <input type="text" class="form-control @error('aadhar_no') is-invalid @enderror" value="{{old('aadhar_no') ? old('aadhar_no') : $data->aadhar_no}}" id="aadhar_no" name="aadhar_no" placeholder="Enter Aadhar No" onkeypress="return isNumberKey(event)" maxlength="12" minlength="12">
                                            <label for="aadhar_no">Enter Aadhar No &nbsp;<span style="color:red;">*</span></label>
                                        </div>
                                        @error('aadhar_no')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3" style="margin-top: 23px!important">
                                        <div class="form-floating">
                                            <input type="date" class="form-control @error('joining_date') is-invalid @enderror" value="{{old('joining_date') ? old('joining_date') : $data->joining_date}}" id="joining_date" name="joining_date" placeholder="Enter Joining Date">
                                            <label for="joining_date">Enter Joining Date &nbsp;<span style="color:red;">*</span></label>
                                        </div>
                                        @error('joining_date')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3">
                                        <label for="image">Image &nbsp;<span style="color:red;"></span></label>
                                        <input type="file" class="form-control" type="text" value="" id="image" name="image" placeholder="Enter Image" >
                                        @if($data->image)
                                        <img id="slide_img_path2" height=100 width=100 src="{{asset($data->image)}} ">
                                        @endif
                                        @error('image')
                                        <div style="color:red">{{$message}}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3">
                                        <label>Designation &nbsp;<span style="color:red;"></span></label>
                                        <select name="designation" id="designation" class="form-control">
                                            <option value="">----Select Designation----</option>
                                            <option value="Head" @if (!empty($data->designation) && ($data->designation == 'Head')) selected @endif>Head</option>
                                            <option value="HOD" @if (!empty($data->designation) && ($data->designation == 'HOD')) selected @endif>HOD</option>
                                        </select>
                                        @error('designation')
                                        <span class='invalid-feedback' role='alert' style='color:#dc3545 !important'>
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6 my-3">
                                        <label>Courses &nbsp;<span style="color:red;"></span></label>
                                        <select name="courses_id[]" id="courses_id" class="form-control select2" multiple="multiple" required>
                                            <option value="">----Select Courses----</option>
                                            @php $filterdata=$data->courses_id?json_decode($data->courses_id):[];
                                            @endphp
                                            @foreach($courseData as $course)
                                            <option value="{{$course->id}}" {{ in_array($course->id, $filterdata) ? 'selected' : '' }}>{{$course->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('courses_id')
                                        <span class='invalid-feedback' role='alert' style='color:#dc3545 !important'>
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror

                                    </div>
                                    <div class="form-group">
                                        <div class="w-100 text-center">
                                            <button type="submit" style="margin-top: 10px;" class="btn btn-danger"><i class="fa fa-user"></i> Submit</button>

                                        </div>
                                    </div>
                            </form>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->

        </div>
        <!-- end page content-->

    </div> <!-- container-fluid -->

</div> <!-- content -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.select2').select2();
    });
</script>
@endsection