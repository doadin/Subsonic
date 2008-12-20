package net.sourceforge.subsonic.ajax;

import java.util.List;

/**
 * The playlist of a player.
 *
 * @author Sindre Mehus
 */
public class PlaylistInfo {

    private final List<Entry> entries;
    private final int index;
    private final boolean stopEnabled;
    private final boolean repeatEnabled;
    private final boolean sendM3U;

    public PlaylistInfo(List<Entry> entries, int index, boolean stopEnabled, boolean repeatEnabled, boolean sendM3U) {
        this.entries = entries;
        this.index = index;
        this.stopEnabled = stopEnabled;
        this.repeatEnabled = repeatEnabled;
        this.sendM3U = sendM3U;
    }

    public List<Entry> getEntries() {
        return entries;
    }

    public int getIndex() {
        return index;
    }

    public boolean isStopEnabled() {
        return stopEnabled;
    }

    public boolean isSendM3U() {
        return sendM3U;
    }

    public boolean isRepeatEnabled() {
        return repeatEnabled;
    }

    public static class Entry {
        private final Integer trackNumber;
        private final String title;
        private final String artist;
        private final String album;
        private final String genre;
        private final String year;
        private final String bitRate;
        private final Integer duration;
        private final String durationAsString;
        private final String format;
        private final String contentType;
        private final String fileSize;
        private final String albumUrl;
        private final String streamUrl;

        public Entry(Integer trackNumber, String title, String artist, String album, String genre, String year,
                     String bitRate, Integer duration, String durationAsString, String format, String contentType, String fileSize,
                     String albumUrl, String streamUrl) {
            this.trackNumber = trackNumber;
            this.title = title;
            this.artist = artist;
            this.album = album;
            this.genre = genre;
            this.year = year;
            this.bitRate = bitRate;
            this.duration = duration;
            this.durationAsString = durationAsString;
            this.format = format;
            this.contentType = contentType;
            this.fileSize = fileSize;
            this.albumUrl = albumUrl;
            this.streamUrl = streamUrl;
        }

        public Integer getTrackNumber() {
            return trackNumber;
        }

        public String getTitle() {
            return title;
        }

        public String getArtist() {
            return artist;
        }

        public String getAlbum() {
            return album;
        }

        public String getGenre() {
            return genre;
        }

        public String getYear() {
            return year;
        }

        public String getBitRate() {
            return bitRate;
        }

        public String getDurationAsString() {
            return durationAsString;
        }

        public Integer getDuration() {
            return duration;
        }

        public String getFormat() {
            return format;
        }

        public String getContentType() {
            return contentType;
        }

        public String getFileSize() {
            return fileSize;
        }

        public String getAlbumUrl() {
            return albumUrl;
        }

        public String getStreamUrl() {
            return streamUrl;
        }
    }

}