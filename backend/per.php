<?php
include_once "./base.php";
?>

<style>
    .topic {
        font-size: 2rem;
        font-weight: 700;
        line-height: 2rem;
        height: 2.5rem;
        text-align: center;
        color: darkred;
        /* background: rgba(250, 150, 160, 0.4);
        border: 1px solid hotpink;
        border-radius: 0.25rem; */
    }
</style>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 topic">Personal Information</div>
        <?php
        $per = $Per->all([]);
        foreach ($per as $k => $v) {
        ?>
            <div class="col-12 col-md-8 input-group mb-3">
                <div class="input-group-prepend col-3 px-0">
                    <span class="input-group-text text-center col-12">Name</span>
                </div>
                <input class="form-control col-9" name="name_CH" value="<?= $per[0]['name'] ?>">
            </div>
            <div class="col-12 col-md-8 input-group mb-3">
                <div class="input-group-prepend col-3 px-0">
                    <span class="input-group-text text-center col-12">Name in CH</span>
                </div>
                <input class="form-control col-9" name="name_CH" value="<?= $per[0]['name_CH'] ?>">
            </div>

        <?php
        }
        ?>
    </div>
</div>