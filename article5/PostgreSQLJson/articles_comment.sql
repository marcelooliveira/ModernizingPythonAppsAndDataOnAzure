SELECT json_agg(articles_comment.created_at) as comments FROM articles_comment;
