SELECT
id as "id.int32()",
to_char(created_at, 'yyyy-mm-dd HH24:MI:SS') as "created_at.date_ms(yyyy-MM-dd H:mm:ss)",
to_char(updated_at, 'yyyy-mm-dd HH24:MI:SS') as "updated_at.date_ms(yyyy-MM-dd H:mm:ss)",
bio as "bio.string()",
image as "image.string()",
user_id as "user_id.int32()"
FROM profiles_profile;
