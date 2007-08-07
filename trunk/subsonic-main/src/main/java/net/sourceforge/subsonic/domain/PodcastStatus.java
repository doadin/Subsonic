package net.sourceforge.subsonic.domain;

/**
 * Enumeration of statuses for {@link PodcastChannel} and
 * {@link PodcastEpisode}.
 *
 * @author Sindre Mehus
 */
public enum PodcastStatus {
    NEW, DOWNLOADING, COMPLETED, ERROR, DELETED, SKIPPED
}
