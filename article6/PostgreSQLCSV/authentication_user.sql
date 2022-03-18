SELECT
id as "id.int32()",
password as "password.string()",
is_superuser as "is_superuser.boolean()",
username as "username.string()",
email as "email.string()",
is_active as "is_active.boolean()",
is_staff as "is_staff.boolean()",
to_char(created_at, 'yyyy-mm-dd HH24:MI:SS') as "created_at.date_ms(yyyy-MM-dd H:mm:ss)",
to_char(updated_at, 'yyyy-mm-dd HH24:MI:SS') as "updated_at.date_ms(yyyy-MM-dd H:mm:ss)"
FROM authentication_user;