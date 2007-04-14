package net.sourceforge.subsonic.dao.schema;

import net.sourceforge.subsonic.Logger;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * Used for creating and evolving the database schema.
 * This class implementes the database schema for Subsonic version 3.1.
 *
 * @author Sindre Mehus
 */
public class Schema31 extends Schema {
    private static final Logger LOG = Logger.getLogger(Schema31.class);

    public void execute(JdbcTemplate template) {

        if (template.queryForInt("select count(*) from version where version = 7") == 0) {
            LOG.info("Updating database schema to version 7.");
            template.execute("insert into version values (7)");
        }

        if (!columnExists(template, "enabled", "music_file_info")) {
            LOG.info("Database column 'music_file_info.enabled' not found.  Creating it.");
            template.execute("alter table music_file_info add enabled boolean default true not null");
            LOG.info("Database columns 'music_file_info' was added successfully.");
        }
    }
}
