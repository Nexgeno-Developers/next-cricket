
<?php if(!empty($bidding)){ ?>
    <table class="table">
        <thead>
            <tr>
                <th>Sr No.</th>
                <th>Owner ID</th>
                <th>Team ID</th>
                <th>Amount</th>
                <th>Is Winner</th>
                <th>Bid Time</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            foreach ($bidding as $data) { 
                $owner_name = $this->db->select('name')->where('admin_id', $data['owner_id'])->get('admin')->row_array();
                $teams_name = $this->db->select('teams_name')->where('teams_id', $data['team_id'])->get('teams')->row_array();

                if($data['is_winner'] == 1){
                    $status = 'Win';
                } else {
                    $status = '-';
                }
                ?>
                <tr>
                    <td><?= $i++; ?></td>
                    <td><?= $owner_name['name']; ?></td>
                    <td><?= $teams_name['teams_name']; ?></td>
                    <td><?= $data['amount']; ?></td>
                    <td><?= $status; ?></td>
                    <td><?= $data['bid_time']; ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
<?php } else { ?>
    <p>Unsold Player</p>
<?php } ?>


<script>

    const saveButton = document.querySelector('button.btn.btn-purple.enterer[data-bb-handler="success"]');
    if (saveButton) {
        saveButton.style.display = "none";
    }

</script>