SELECT
id as "id.int32()",
to_char(created_at, 'yyyy-mm-dd HH24:MI:SS') as "created_at.date_ms(yyyy-MM-dd H:mm:ss)",
to_char(updated_at, 'yyyy-mm-dd HH24:MI:SS') as "updated_at.date_ms(yyyy-MM-dd H:mm:ss)",
body as "body.string()",
article_id as "article_id.int32()",
author_id as "author_id.int32()"
FROM articles_comment;
