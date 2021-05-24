const PLAYER_STORAGE_KEY = "quangdeptrai";
const $m = document.querySelector.bind(document);

const audio = $("#audio");
const playBtn = $(".btn__play");
const nextBtn = $(".btn__next");
const prevBtn = $(".btn__prev");
const songImg = $(".controls .card img");
const songName = $m(".controls .card-info h3");
const songArtist = $m(".controls .card-info a");
const cdImage = $m(".cd-img img");
const crTime = $m(".currentTime");
const dTime = $m(".durationTime");
const slider = $m(".slider");
const volume = $m("#volume");
const randomBtn = $m(".btn__random");
const loopBtn = $m(".btn__loop");
const items = document.querySelectorAll(".playlist .item");
const search = $m(".search-bar");
const swCheckbox = $m(".switch input");
const swLabel = $m(".switch label");

const app = {
  currentIndex: 0,
  isRandomSong: false,
  isLoop: false,
  isDarkMode: false,
  songs: audio.data("data"),
  config: JSON.parse(localStorage.getItem(PLAYER_STORAGE_KEY)) || {},
  setConfig: function (key, value) {
    this.config[key] = value;
    localStorage.setItem(PLAYER_STORAGE_KEY, JSON.stringify(this.config));
  },

  getData: function () {
    this.setConfig("data", this.songs);
  },

  difineProperties: function () {
    Object.defineProperty(this, "currentSong", {
      get: function () {
        return this.songs[this.currentIndex];
      },
    });
  },

  loadCurrentSong: function () {
    items.forEach((item) => {
      if (item.dataset.index == this.currentIndex) {
        item.classList.add("active");
      } else {
        item.classList.remove("active");
      }
    });
    songImg.attr("src", this.currentSong.song_image);
    songName.textContent = this.currentSong.song_name;
    songArtist.textContent = this.currentSong.artist_stageName;
    audio.attr("src", this.currentSong.song_path);
  },

  loadConfig: function () {
    this.songs = this.config.data;
    this.isLoop = this.config.isLoop;
    this.isRandomSong = this.config.isRandom;
    this.isDarkMode = this.config.isDarkMode;
    randomBtn.classList.toggle("active", this.isRandomSong);
    loopBtn.classList.toggle("active", this.isLoop);
    this.darkMode();
    $m(".volume-value").style.width = volume.value + "%";
  },

  handleEvents: function () {
    search.onclick = function (e) {
      const searchBar = e.target.closest("#search");
      if (searchBar) {
      }
    };
    playBtn.on("click", () => {
      if (audio[0].paused) {
        audio[0].play();
      } else {
        audio[0].pause();
      }
    });
    audio[0].onplay = () => {
      // Thay đổi nội dung button Play
      $(".btn__play img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fpause-round.png?alt=media&token=166351f3-53f7-414b-b5e9-a873ea85731f"
      );
      $(".btn__play-with--text img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fpause.png?alt=media&token=e6a6fdc5-3d2b-4aa2-96f5-8384e69185b5"
      );
      $m(".btn__play-with--text").textContent = "Tạm ngưng";

      $m(".item.active .sound-animate").style.backgroundImage =
        "url('https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Ficon_playing_white.gif?alt=media&token=692452dc-62ff-4a01-b002-3b43f5d9f136')";
      document.querySelectorAll(".item .sound-animate").forEach((item) => {
        item.classList.remove("active");
      });
      $m(".item.active .sound-animate").classList.add("active");
      //Xử lý bật quay CD
      cdImage.style.borderRadius = 50 + "%";
      cdImage.style.opacity = 0.5;
      rotateCD.play();
    };
    audio[0].onpause = () => {
      // Thay đổi nội dung button Play
      $(".btn__play img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fplay-button.png?alt=media&token=dff9e9b3-6054-4456-ab4a-5ce2a692ce9d"
      );
      $(".btn__play-with--text img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fplay.png?alt=media&token=236eb808-b6f0-4815-849f-aa36ea5ada7e"
      );
      $m(".btn__play-with--text").textContent = "Tiếp tục phát";
      document.querySelectorAll(".item .sound-animate").forEach((item) => {
        item.classList.remove("active");
      });
      // Xử lý tắt quay CD
      cdImage.style.borderRadius = 3 + "px";
      cdImage.style.opacity = 1;
      rotateCD.cancel();
    };
    audio[0].onended = () => {
      if (this.isLoop) {
        this.currentIndex = this.currentIndex;
      } else {
        this.nextSong();
      }
      audio[0].play();
    };
    // Phát lại bài hát
    loopBtn.onclick = () => {
      this.isLoop = !this.isLoop;
      this.setConfig("isLoop", this.isLoop);
      loopBtn.classList.toggle("active", this.isLoop);
    };

    nextBtn.on("click", () => {
      if (this.isRandomSong) {
        this.randomSong();
      } else {
        this.nextSong();
      }
      audio[0].play();
    });

    prevBtn.on("click", () => {
      this.currentIndex--;
      this.loadCurrentSong();
      audio[0].play();
    });

    // Hiển thị thời lượng bài hát
    audio[0].onloadedmetadata = () => {
      var durmins = Math.floor(audio[0].duration / 60);
      var dursecs = Math.floor(audio[0].duration - durmins * 60);
      durmins = durmins < 10 ? `0${durmins}` : durmins;
      dursecs = dursecs < 10 ? `0${dursecs}` : dursecs;
      dTime.textContent = `${durmins}:${dursecs}`;
    };

    // Xử lý tiến độ bài hát thay đổi
    audio[0].ontimeupdate = function () {
      if (audio[0].duration) {
        var curmins = Math.floor(audio[0].currentTime / 60);
        var cursecs = Math.floor(audio[0].currentTime - curmins * 60);
        curmins = curmins < 10 ? `0${curmins}` : curmins;
        cursecs = cursecs < 10 ? `0${cursecs}` : cursecs;
        crTime.textContent = `${curmins}:${cursecs}`;

        const sliderPercent = Math.floor(
          (audio[0].currentTime / audio[0].duration) * 100
        );
        slider.value = sliderPercent;
        $m(".slider-value").style.width = slider.value + "%";
      }
    };

    // Xử lý khi tua bài hát
    slider.onchange = () => {
      audio[0].currentTime = (slider.value / 100) * audio[0].duration;
      (50 / 100) * 4;
    };

    // Volume onchange
    volume.onchange = () => {
      this.updateVolume();
    };

    $m(".volume-icon").onclick = () => {
      if (volume.value > 0) {
        volume.value = 0;
      } else {
        volume.value = 100;
      }
      this.updateVolume();
    };

    // Xử lý khi bật/ tắt random
    randomBtn.onclick = () => {
      this.isRandomSong = !this.isRandomSong;
      this.setConfig("isRandom", this.isRandomSong);
      randomBtn.classList.toggle("active", this.isRandomSong);
    };

    $m(".playlist").onclick = (e) => {
      const item = e.target.closest(".item:not(.active)");
      if (item && e.target.closest(".image-thumb")) {
        this.currentIndex = Number(item.dataset.index);
        this.loadCurrentSong();
        audio[0].play();
      }
    };

    swCheckbox.onchange = () => {
      this.isDarkMode = !this.isDarkMode;
      this.setConfig("isDarkMode", this.isDarkMode);
      swLabel.addEventListener("transitionend", () => {
        this.darkMode();
      });
    };

    const CDWidth = cdImage.offsetWidth;
    // Scroll Top
    document.onscroll = function () {
      const scrollTop = window.scrollY || document.documentElement.scrollTop;
      const newCdWidth = CDWidth - scrollTop;
      cdImage.style.width = newCdWidth > 0 ? newCdWidth + "px" : 0;
      cdImage.style.height = newCdWidth > 0 ? newCdWidth + "px" : 0;
    };

    // CD rotate
    const rotateCD = cdImage.animate([{ transform: "rotate(360deg)" }], {
      duration: 20000,
      iterations: Infinity,
    });
    rotateCD.pause();
  },
  nextSong: function () {
    this.currentIndex++;
    if (this.currentIndex > this.songs.length - 1) {
      this.currentIndex = 0;
    }
    this.loadCurrentSong();
  },
  prevSong: function () {
    this.currentIndex--;
    if (this.currentIndex < 0) {
      this.currentIndex = this.songs.length - 1;
    }
    this.loadCurrentSong();
  },
  randomSong: function () {
    let newIndex;
    do {
      newIndex = Math.floor(Math.random() * this.songs.length);
    } while (newIndex === this.currentIndex);
    this.currentIndex = newIndex;
    this.loadCurrentSong();
  },

  updateVolume: function () {
    audio[0].volume = volume.value / 100;
    $m(".volume-value").style.width = volume.value + "%";
    if (volume.value == 0) {
      $(".volume-icon img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fmute.png?alt=media&token=be1917cc-b0a7-4c74-bf65-3360ee96f692"
      );
    } else {
      $(".volume-icon img").attr(
        "src",
        "https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fvolume.png?alt=media&token=cbba3bb7-d609-4e64-84da-16b1d06bb8e6"
      );
    }
  },

  darkMode: function () {
    if (this.isDarkMode) {
      swCheckbox.setAttribute("checked", "");
      document.documentElement.setAttribute("data-theme", "dark");
    } else {
      swCheckbox.removeAttribute("checked");
      document.documentElement.removeAttribute("data-theme", "dark");
    }
  },

  start: function () {
    this.getData();
    // Load Config
    this.loadConfig();
    // Định nghĩa các thuộc tính cho Object
    this.difineProperties();
    // Load bài hát hiện tại
    this.loadCurrentSong();
    this.handleEvents();
  },
};

app.start();
