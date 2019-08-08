export const formatTime = (time) => {
    const roundedTime = Math.floor(time);

    const hours = Math.floor(roundedTime / 3600);
    const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
    const seconds = roundedTime - (hours * 3600) - (minutes * 60);

    return ((this._audio.duration >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
};