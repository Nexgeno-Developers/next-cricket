    <?php	
        $role_id = $this->crud_model->get_type_name_by_id('admin', $this->session->userdata('admin_id'), 'role');
    ?>
    
    <style>
        body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(135deg, #1d2671, #c33764);
            color: white;
            font-family: 'Montserrat', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            overflow: hidden;
        }

        .winner-container {
            max-width: 600px;
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .team-logo {
            width: 180px;
            height: 180px;
            object-fit: contain;
            border-radius: 50%;
            background: white;
            padding: 10px;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 2.5rem;
            margin: 10px 0;
        }

        .league-name {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .redirect-msg {
            margin-top: 20px;
            font-size: 0.9rem;
            opacity: 0.7;
        }
    </style>
    </head>

    <body>

        <div class="winner-container">

            <?php if (!empty($no_winner)) { ?>

                <h1>⚠ <?= htmlspecialchars($no_winner) ?> ⚠</h1>

            <?php } else { ?>

                <?php if (!empty($team->logo) && file_exists(FCPATH . 'uploads/teams_image/' . $team->logo)) { ?>
                    <img src="<?= base_url('uploads/teams_image/' . $team->logo) ?>" alt="Team Logo" class="team-logo">
                <?php } else { ?>
                    <img class="team-logo" src="<?= base_url('uploads/default.jpg'); ?>" alt="Default Logo" />
                <?php } ?>

                <h1>🏆 Winner: <?= ucfirst(htmlspecialchars($team->teams_name)) ?> 🏆</h1>
                <p>Player: <strong><?= ucfirst(htmlspecialchars($player->players_name)) ?></strong></p>
                <p class="league-name">League: <?= ucfirst(htmlspecialchars($league->league_name)) ?></p>
                
            <?php } ?>

            <p class="redirect-msg">Redirecting to League page in <span id="countdown">30</span> seconds...</p>
        </div>

        <!-- Confetti JS -->
        <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>

        <!-- Clapping Sound -->
        <audio id="clapSound" src="https://www.soundjay.com/human/applause-8.mp3" preload="auto"></audio>
        <audio id="tryAgainSound" src="<?= base_url('/uploads/tf_nemesis.mp3') ?>" preload="auto"></audio>

        <script>

            function playTryAgain() {
                const tryAgainSound = document.getElementById("tryAgainSound");
                tryAgainSound.currentTime = 0;
                tryAgainSound.play();
            }

            
            // Confetti blast on load
            function launchConfetti() {
                const duration = 5 * 1000;
                const end = Date.now() + duration;

                const clapSound = document.getElementById("clapSound");
                clapSound.currentTime = 0; // restart sound if already playing


                (function frame() {
                    confetti({
                        particleCount: 5,
                        angle: 60,
                        spread: 55,
                        origin: {
                            x: 0
                        }
                    });
                    confetti({
                        particleCount: 5,
                        angle: 120,
                        spread: 55,
                        origin: {
                            x: 1
                        }
                    });

                    if (Date.now() < end) {
                        requestAnimationFrame(frame);
                    }
                })();
            }
            <?php if (empty($no_winner)) { ?>
                launchConfetti();
                clapSound.play();
            <?php } else { ?>
                playTryAgain();
            <?php } ?>

            // Countdown & Redirect
            let timeLeft = 30;
            const countdownEl = document.getElementById("countdown");

            const timer = setInterval(() => {
                timeLeft--;
                countdownEl.textContent = timeLeft;
                if (timeLeft <= 0) {
                    clearInterval(timer);
                    <?php if ($role_id != 1) { ?>
                        window.location.href = "<?= base_url('index.php/admin/bidding') ?>";
                    <?php } else { ?>
                        window.location.href = "<?= base_url('index.php/admin/league') ?>";
                    <?php } ?>  

                }
            }, 1000);
        </script>