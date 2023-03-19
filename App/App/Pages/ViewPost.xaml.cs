using System;
using System.Collections.Generic;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ViewPost : ContentPage
    {
        private User _user;
        private Post _post;

        public ViewPost(int postId, User user)
        {
            InitializeComponent();
            _user = user;
            LoadPost(postId);
            LoadComments(postId);

            // If the current user is not the author of the post, hide the delete button
            if (_post.UserId != _user.Id)
            {
                DeletePostButton.IsVisible = false;
            }
        }

        private void LoadPost(int postId)
        {
            using (var db = new AppDbContext())
            {
                _post = db.Connection.Table<Post>().FirstOrDefault(p => p.Id == postId);
                User postAuthor = db.Connection.Find<User>(_post.UserId);

                PostTitle.Text = _post.Title;
                PostDescription.Text = _post.Description;
                PostAuthor.Text = $"By {postAuthor.Name}";

                int totalLikes = db.Connection.Table<Like>().Count(l => l.PostId == _post.Id);
                TotalLikesLabel.Text = $"{totalLikes} Likes";

                // Set the text of the Like / Unlike Post button based on whether the current user has already liked the post or not
                var existingLike = db.Connection.Table<Like>().FirstOrDefault(l => l.UserId == _user.Id && l.PostId == _post.Id);
                if (existingLike == null)
                {
                    LikeButton.Text = "Like";
                }
                else
                {
                    LikeButton.Text = "Unlike";
                }
            }
        }

        private void LoadComments(int postId)
        {
            using (var db = new AppDbContext())
            {
                var comments = db.Connection.Table<Comment>().Where(c => c.PostId == postId).ToList();
                List<CommentWithAuthor> commentsWithAuthors = new List<CommentWithAuthor>();

                foreach (var comment in comments)
                {
                    User author = db.Connection.Find<User>(comment.UserId);
                    commentsWithAuthors.Add(new CommentWithAuthor
                    {
                        Comment = comment,
                        AuthorName = author.Name
                    });
                }

                CommentsListView.ItemsSource = commentsWithAuthors;
            }
        }
        public class CommentWithAuthor
        {
            public Comment Comment { get; set; }
            public string AuthorName { get; set; }
        }

        private async void AddCommentButton_Clicked(object sender, EventArgs e)
        {
            using (var db = new AppDbContext())
            {
                var newComment = new Comment
                {
                    Text = NewCommentEntry.Text,
                    UserId = _user.Id,
                    PostId = _post.Id
                };

                db.Connection.Insert(newComment);
            }

            NewCommentEntry.Text = string.Empty;
            LoadComments(_post.Id);

            await DisplayAlert("Success", "Comment added.", "OK");
        }
        private async void DeletePostButton_Clicked(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Delete post", "Are you sure you want to delete this post?", "Yes", "No");

            if (answer)
            {
                using (var db = new AppDbContext())
                {
                    // Delete post
                    db.Connection.Delete(_post);

                    // Delete likes for the post
                    var likes = db.Connection.Table<Like>().Where(l => l.PostId == _post.Id).ToList();
                    foreach (var like in likes)
                    {
                        db.Connection.Delete(like);
                    }

                    // Delete comments for the post
                    var comments = db.Connection.Table<Comment>().Where(c => c.PostId == _post.Id).ToList();
                    foreach (var comment in comments)
                    {
                        db.Connection.Delete(comment);
                    }
                }

                await DisplayAlert("Success", "Post deleted.", "OK");
                await Navigation.PopAsync();
            }
        }


        private async void LikeButton_Clicked(object sender, EventArgs e)
        {
            using (var db = new AppDbContext())
            {
                var existingLike = db.Connection.Table<Like>().FirstOrDefault(l => l.UserId == _user.Id && l.PostId == _post.Id);

                if (existingLike == null)
                {
                    var newLike = new Like
                    {
                        UserId = _user.Id,
                        PostId = _post.Id
                    };

                    db.Connection.Insert(newLike);
                    await DisplayAlert("Success", "Post liked.", "OK");

                    // Update the button text to "Unlike"
                    ((Button)sender).Text = "Unlike";
                }
                else
                {
                    db.Connection.Delete(existingLike);
                    await DisplayAlert("Success", "Post unliked.", "OK");

                    // Update the button text to "Like"
                    ((Button)sender).Text = "Like";
                }
            }
        }

    }
}
