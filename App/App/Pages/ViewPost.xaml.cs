using System;
using System.Collections.Generic;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ViewPost : ContentPage
    {
        private User users;
        private Post post;

        public ViewPost(int postId, User user)
        {
            InitializeComponent();
            users = user;
            LoadPost(postId);
            LoadComments(postId);

            // If the current user is not the author of the post, hide the delete button
            if (post.UserId != user.Id)
            {
                DeletePostButton.IsVisible = false;
            }
        }

        private void LoadPost(int postId)
        {
            using (var db = new AppDatabase())
            {
                post = db.PostRepo.GetPostById(postId);
                User postAuthor = db.UserRepo.GetUserById(post.UserId);

                PostTitle.Text = post.Title;
                PostDescription.Text = post.Description;
                PostAuthor.Text = $"By {postAuthor.Name}";

                int totalLikes = db.LikeRepo.GetTotalLikesForPost(post.Id);
                TotalLikesLabel.Text = $"{totalLikes} Likes";

                // Set the text of the Like / Unlike Post button based on whether the current user has already liked the post or not
                var existingLike = db.LikeRepo.GetLikeByUserIdAndPostId(users.Id, post.Id);
                if (existingLike == null)
                {
                    LikeButton.Text = "Like";
                }
                else
                {
                    LikeButton.Text = "Unlike";
                }

                if (post.ImageData != null)
                {
                    PostImage.Source = ImageSource.FromStream(() => new MemoryStream(post.ImageData));
                }
            }
        }

        private void LoadComments(int postId)
        {
            using (var db = new AppDatabase())
            {
                var comments = db.CommentsRepo.GetCommentsByPostId(postId);
                List<CommentWithAuthor> commentsWithAuthors = new List<CommentWithAuthor>();

                foreach (var comment in comments)
                {
                    User author = db.UserRepo.GetUserById(comment.UserId);
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
            using (var db = new AppDatabase())
            {
                var newComment = new Comment
                {
                    Text = NewCommentEntry.Text,
                    UserId = users.Id,
                    PostId = post.Id
                };

                db.CommentsRepo.CreateComment(newComment);
            }

            NewCommentEntry.Text = string.Empty;
            LoadComments(post.Id);

            await DisplayAlert("Success", "Comment added.", "OK");
        }
        private async void DeletePostButton_Clicked(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Delete post", "Are you sure you want to delete this post?", "Yes", "No");

            if (answer)
            {
                using (var db = new AppDatabase())
                {
                    // Delete post
                    db.PostRepo.DeletePost(post);

                    // Delete likes for the post
                    db.LikeRepo.DeleteLikesForPost(post.Id);

                    // Delete comments for the post
                    db.CommentsRepo.DeleteCommentsForPost(post.Id);
                }

                await DisplayAlert("Success", "Post deleted.", "OK");
                await Navigation.PopAsync();
            }
        }

        private async void LikeButton_Clicked(object sender, EventArgs e)
        {
            using (var db = new AppDatabase())
            {
                var existingLike = db.LikeRepo.GetLikeByUserIdAndPostId(users.Id, post.Id);

                if (existingLike == null)
                {
                    var newLike = new Like
                    {
                        UserId = users.Id,
                        PostId = post.Id
                    };

                    db.LikeRepo.CreateLike(newLike);
                    await DisplayAlert("Success", "Post liked.", "OK");

                    // Update the button text to "Unlike"
                    ((Button)sender).Text = "Unlike";
                }
                else
                {
                    db.LikeRepo.DeleteLike(existingLike);
                    await DisplayAlert("Success", "Post unliked.", "OK");

                    // Update the button text to "Like"
                    ((Button)sender).Text = "Like";
                }
            }
        }

    }
}
