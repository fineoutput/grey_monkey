@extends('frontend.layouts.app')
@section('main')

   <div class="form-main " id="cntct">
      <div class="main-wrapper">
        <h2 class="form-head">Call us today on 0800 292 2313 or leave your message for a FREE quote!</h2>
        <form class="form-wrapper">
          <div class="form-card">
            <input
              class="form-input"
              type="text"
              name="full_name"
              required="required"
            />
            <label class="form-label" for="full_name">Full Name</label>
          </div>

          <div class="form-card">
            <input
              class="form-input"
              type="email"
              name="email"
              required="required"
            />
            <label class="form-label" for="email">Email</label>
          </div>

          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="phone_number"
              required="required"
            />
            <label class="form-label" for="phone_number">Phone number</label>
          </div>
          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="post_code"
              required="required"
            />
            <label class="form-label" for="post_code">POSTCODE </label>
          </div>
          <div class="form-card">
            <input
              class="form-input"
              type="number"
              name="hire_period"
              required="required"
            />
            <label class="form-label" for="hire_period">HIRE PERIOD</label>
          </div>
          <div class="form-card">
            <textarea
              class="form-textarea"
              maxlength="420"
              rows="3"
              name="phone_number"
              required="required"
            ></textarea>
            <label class="form-textarea-label" for="phone_number"
              >HOW CAN WE ASSIST?</label
            >
          </div>
          <div class="btn-wrap">
            <button> Submit </button>
          </div>
        </form>
      </div>
    </div>
@endsection