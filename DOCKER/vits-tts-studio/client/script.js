document.addEventListener("DOMContentLoaded", () => {
    // Navigation
    const navItems = document.querySelectorAll(".nav-item");
    const sections = document.querySelectorAll(".page-content");

    navItems.forEach((item) => {
        item.addEventListener("click", () => {
            const sectionId = item.getAttribute("data-section");
            navItems.forEach((ni) => ni.classList.remove("active"));
            sections.forEach((s) => s.classList.remove("active"));

            item.classList.add("active");
            document.getElementById(`section-${sectionId}`).classList.add("active");
        });
    });

    // Advanced Panel Toggle
    const toggleAdvanced = document.getElementById("toggle-advanced");
    const advancedPanel = document.getElementById("advanced-panel");
    toggleAdvanced.addEventListener("click", () => {
        advancedPanel.classList.toggle("hidden");
        toggleAdvanced.querySelector(".arrow").textContent = advancedPanel.classList.contains("hidden") ? "▼" : "▲";
    });

    // TTS Elements
    const ttsText = document.getElementById("tts-text");
    const ttsSpeaker = document.getElementById("tts-speaker");
    const ttsSpeed = document.getElementById("tts-speed");
    const ttsNoise = document.getElementById("tts-noise");
    const ttsNoiseW = document.getElementById("tts-noise-w");
    const ttsSdp = document.getElementById("tts-sdp");

    const speedVal = document.getElementById("speed-val");
    const noiseVal = document.getElementById("noise-val");
    const noiseWVal = document.getElementById("noise-w-val");
    const sdpVal = document.getElementById("sdp-val");
    const charCount = document.getElementById("char-count");

    // Update value displays
    const updateVal = (input, display) => {
        input.addEventListener("input", () => {
            display.textContent = input.value;
        });
    };
    updateVal(ttsSpeed, speedVal);
    updateVal(ttsNoise, noiseVal);
    updateVal(ttsNoiseW, noiseWVal);
    updateVal(ttsSdp, sdpVal);

    ttsText.addEventListener("input", () => {
        charCount.textContent = `${ttsText.value.length} ký tự`;
    });

    // Presets Logic
    const presetBtns = document.querySelectorAll(".btn-preset");
    const presets = {
        default: { noise: 0.667, noise_w: 0.8, sdp: 0.2 },
        natural: { noise: 0.5, noise_w: 0.7, sdp: 0.5 },
        expressive: { noise: 0.8, noise_w: 1.0, sdp: 0.3 }
    };

    presetBtns.forEach((btn) => {
        btn.addEventListener("click", () => {
            presetBtns.forEach((b) => b.classList.remove("active"));
            btn.classList.add("active");
            const p = presets[btn.getAttribute("data-preset")];

            ttsNoise.value = p.noise;
            noiseVal.textContent = p.noise;
            ttsNoiseW.value = p.noise_w;
            noiseWVal.textContent = p.noise_w;
            ttsSdp.value = p.sdp;
            sdpVal.textContent = p.sdp;
        });
    });

    // Wavesurfer Initialization
    const wavesurfer = WaveSurfer.create({
        container: "#waveform",
        waveColor: "#4facfe",
        progressColor: "#00f2fe",
        cursorColor: "#fff",
        barWidth: 2,
        barRadius: 3,
        responsive: true,
        height: 80
    });

    const playPauseBtn = document.getElementById("play-pause");
    playPauseBtn.addEventListener("click", () => wavesurfer.playPause());

    wavesurfer.on("play", () => {
        playPauseBtn.textContent = "⏸";
    });
    wavesurfer.on("pause", () => {
        playPauseBtn.textContent = "▶";
    });

    wavesurfer.on("audioprocess", () => {
        document.getElementById("curr-time").textContent = formatTime(wavesurfer.getCurrentTime());
    });
    wavesurfer.on("ready", () => {
        document.getElementById("total-time").textContent = formatTime(wavesurfer.getDuration());
    });

    function formatTime(s) {
        const min = Math.floor(s / 60);
        const sec = Math.floor(s % 60);
        return `${min.toString().padStart(2, "0")}:${sec.toString().padStart(2, "0")}`;
    }

    // Voice Clone Elements
    const dropZone = document.getElementById("drop-zone");
    const refAudio = document.getElementById("ref-audio");
    const fileReady = document.getElementById("file-ready");
    const fileNameDisplay = document.getElementById("file-name");
    const removeFile = document.getElementById("remove-file");

    dropZone.addEventListener("click", () => refAudio.click());
    refAudio.addEventListener("change", () => {
        if (refAudio.files[0]) {
            fileNameDisplay.textContent = refAudio.files[0].name;
            fileReady.classList.remove("hidden");
            dropZone.querySelector(".upload-placeholder").classList.add("hidden");
        }
    });

    removeFile.addEventListener("click", (e) => {
        e.stopPropagation();
        refAudio.value = "";
        fileReady.classList.add("hidden");
        dropZone.querySelector(".upload-placeholder").classList.remove("hidden");
    });

    // History Context
    const historyList = document.getElementById("history-list");
    let history = JSON.parse(localStorage.getItem("tts_history")) || [];

    function saveHistory(text, url, type) {
        const item = { text: text.substring(0, 50) + "...", url, type, date: new Date().toLocaleString() };
        history.unshift(item);
        if (history.length > 20) history.pop();
        localStorage.setItem("tts_history", JSON.stringify(history));
        renderHistory();
    }

    function renderHistory() {
        if (history.length === 0) {
            historyList.innerHTML = '<div class="empty-state">Chưa có dữ liệu lịch sử.</div>';
            return;
        }
        historyList.innerHTML = history
            .map(
                (item, idx) => `
            <div class="history-item">
                <div class="hist-info">
                    <div class="hist-text">${item.text}</div>
                    <div class="hist-meta">${item.type} • ${item.date}</div>
                </div>
                <div class="hist-actions">
                    <button class="btn-preset" onclick="loadAudio('${item.url}')">Phát lại</button>
                    <a href="${item.url}" download class="btn-preset">Tải về</a>
                </div>
            </div>
        `
            )
            .join("");
    }
    renderHistory();

    window.loadAudio = (url) => {
        wavesurfer.load(url);
        document.getElementById("player-container").classList.remove("hidden");
        document.getElementById("download-btn").href = url;
        wavesurfer.once("ready", () => wavesurfer.play());
    };

    document.getElementById("close-player").addEventListener("click", () => {
        document.getElementById("player-container").classList.add("hidden");
        wavesurfer.stop();
    });

    // API Handling
    const loading = document.getElementById("loading");
    const btnGenerate = document.getElementById("btn-generate");
    const btnClone = document.getElementById("btn-clone");

    async function handleAPI(endpoint, body, isFormData = false) {
        loading.classList.remove("hidden");
        try {
            const options = {
                method: "POST",
                body: isFormData ? body : JSON.stringify(body)
            };
            if (!isFormData) options.headers = { "Content-Type": "application/json" };

            const response = await fetch(endpoint, options);
            const data = await response.json();
            if (response.ok) {
                loadAudio(data.audio_url);
                saveHistory(isFormData ? body.get("text") : body.text, data.audio_url, isFormData ? "Clone" : "TTS");
            } else {
                alert("Lỗi: " + data.detail);
            }
        } catch (err) {
            alert("Lỗi kết nối: " + err.message);
        } finally {
            loading.classList.add("hidden");
        }
    }

    btnGenerate.addEventListener("click", () => {
        if (!ttsText.value.trim()) return alert("Vui lòng nhập văn bản");
        handleAPI("/synthesize", {
            text: ttsText.value,
            speaker: ttsSpeaker.value,
            speed: parseFloat(ttsSpeed.value),
            noise_scale: parseFloat(ttsNoise.value),
            noise_scale_w: parseFloat(ttsNoiseW.value),
            sdp_ratio: parseFloat(ttsSdp.value)
        });
    });

    btnClone.addEventListener("click", () => {
        const text = document.getElementById("clone-text").value;
        if (!text.trim()) return alert("Vui lòng nhập văn bản");
        if (!refAudio.files[0]) return alert("Vui lòng chọn giọng mẫu");

        const fd = new FormData();
        fd.append("text", text);
        fd.append("reference_audio", refAudio.files[0]);
        handleAPI("/clone", fd, true);
    });
});
