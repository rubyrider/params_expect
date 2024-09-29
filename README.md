# README

This project a project for my article on Parameters#expect

## Example Test  Case:
```test/controllers/posts_controller_test.rb:26```

When using expect! with unexpected params, the test case will look like this:

```ruby
  test "should raise exception with unexpected params" do
    assert_raise ActionController::ParameterMissing do
      post posts_url, params: { comment: { details: @post.details, title: @post.title } }.expect!(:comment)
    end
  end
```

When using the `expect` method, the test case will look like this:

```test/controllers/posts_controller_test.rb:47```

```ruby
  test "should raise exception with unexpected params" do
    assert_raise ActionController::ParameterMissing do
      post posts_url, params: { comment: { details: @post.details, title: @post.title } }.expect(:comment)
    end
  end
```

When using the `expect` method, the test case will look like this:

```test/controllers/posts_controller_test.rb:26```

```ruby
test "should return bad request when update post with unexpected params" do
  patch post_url(@post), params: { comment: { details: @post.details, title: @post.title } }
  assert_response :bad_request
end
```

Link to the article: TBH
