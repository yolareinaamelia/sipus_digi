  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">Regristrasi Anggota</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                  <form class="row g-3 needs-validation" method="post" action="<?=base_url();?>auth/regristrasi" novalidate>
                    
                    <div class="col-12">
                      <label for="username" class="form-label">Username</label>
                        <input type="text" value="<?= set_value('username');?>" name="username" class="form-control" id="username" required>
                        <div class="invalid-feedback">Please enter a valid Username</div>
                        <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>

                    <div class="col-12">
                      <label for="email" class="form-label">Email</label>
                        <!--<span class="input-group-text" id="inputGroupPrepend">@</span>-->
                        <input type="text" value="<?= set_value('email');?>" name="email" class="form-control" id="email" required>
                        <div class="invalid-feedback">Please enter email addres!.</div>
                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>

                    <div class="col-12">
                      <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required>
                        <div class="invalid-feedback">Please enter your password</div>
                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Create Account</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="<?= base_url();?>auth/login_anggota">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
