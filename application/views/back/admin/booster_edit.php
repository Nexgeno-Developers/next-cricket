
<div class="tab-pane fade active in" id="edit">
		<?php
			echo form_open(base_url() . 'index.php/admin/teams/update-booster/' . $teams_data['teams_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'teams_add',
				'enctype' => 'multipart/form-data'
			));
		?>
		<div class="panel-body">
        
        <input type="hidden" name="team" value="<?php echo $teams_data['teams_id']; ?>">
        <input type="hidden" name="old_amount" value="<?php echo $teams_data['virtual_point']; ?>">

		<div class="form-group">
			<label class="col-sm-4 control-label" for="league">Type</label>
			<div class="col-sm-6">
				<select class="form-control" id="league" name="plan_id" required>
					<option value="">Select type</option>
					<?php foreach($plans as $row) { ?>
					<option value="<?php echo $row['id']; ?>" data-amount="<?php echo $row['get_amount']; ?>">
						<?php echo $row['name'];?>
					</option>
					<?php } ?>
				</select>
			</div>
		</div>

        <div class="form-group">
            <label class="col-sm-4 control-label" for="demo-hor-1">Virtual Point</label>
                <div class="col-sm-6">
                    <input type="text" name="amount"  id="demo-hor-1" placeholder="Virtual Amount" class="form-control required" required>
                </div>
        </div>

		</form>
	</div>

	<table id="demo-table" class="table table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Plan Name</th>
                <th>Virtual Amount</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            $i = 1;
            foreach($transactions as $row) { 
                $plan_data = $this->db->select('name')->from('plans')->where('id', $row['plan_id'])->get()->row();
            ?>
            <tr>
                <td><?= $i++; ?></td>
                <td><?= isset($plan_data->name) ? $plan_data->name : 'N/A'; ?></td>
                <td><?= $row['amount']; ?></td>
                <td><?= $row['created_at']; ?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>



<script>
	$(document).ready(function() {
		$("form").submit(function(e) {
			return false;
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function() {
		readURL(this);
	});



    const selectDropdown = document.getElementById("league");
    const amountInput = document.getElementById("demo-hor-1");

    selectDropdown.addEventListener("change", function() {

        const selectedOption = selectDropdown.options[selectDropdown.selectedIndex];
        const selectedValue = selectedOption.value;
        const dataAmount = selectedOption.getAttribute("data-amount");

        if (selectedValue === "1") {
            amountInput.value = dataAmount;
            amountInput.readOnly = false;
        } else {
            amountInput.value = dataAmount;
            amountInput.readOnly = true;
        }
    });


</script>