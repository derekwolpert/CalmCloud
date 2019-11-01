import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faReply, faTrash } from '@fortawesome/free-solid-svg-icons';



class Comment extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            showNestedInput: false,
            nestedCommentText: "",
        };

        this.handleCommentContent = this.handleCommentContent.bind(this);

    }




    handleCommentContent(comment) {
        return (
            <>
                <Link to={`/${this.props.commentUsers[comment.user_id].username}`} className="comment-avatar">
                    <img src={(this.props.commentUsers[comment.user_id].userPictureUrl || window.defaultAvatar)} />
                </Link>

                <div className="comment-show-header">
                    <Link to={`/${this.props.commentUsers[comment.user_id].username}`} className={`comment-header-display-name${comment.user_id === this.props.track.user_id ? "-uploader" : ""}`}>
                        {this.props.commentUsers[comment.user_id].display_name}
                    </Link>
                    <span>{ this.formatDate(comment.created_at).split("second").join("sec").split("minute").join("min").split("month").join("mo").split("year").join("yr") }</span>
                </div>

                <div className="comment-show-actions">
                    {!comment.parent_comment_id ? <FontAwesomeIcon icon={faReply} onClick={() => this.setState({ showNestedInput: !this.state.showNestedInput })}/> : null }
                    { comment.user_id === this.props.currentUser.id ? <FontAwesomeIcon icon={faTrash} /> : null }
                </div>

                <div className="comment-show-content">
                    { comment.body.split("\n").filter(Boolean).map((el, key) => (
                        <p key={key}>{this.formatUrlsInDescription(el)}</p>)) }
                </div>
            </>
        )
    }

    formatDate(date) {
        const uploadDate = new Date(date);
        const nowDate = new Date();
        const secondsSince = ((nowDate - uploadDate) / 1000);

        if (secondsSince === 1) return `1 second ago`;
        if (secondsSince < 60) return `${Math.floor(secondsSince)} seconds ago`;

        if (secondsSince === 60) return `1 minute ago`;
        if (secondsSince < 3600) return `${Math.floor(secondsSince / 60)} minutes ago`;

        if (secondsSince === 3600) return `1 hour ago`;
        if (secondsSince < 86400) return `${Math.floor(secondsSince / 3600)} hours ago`;

        if (secondsSince === 86400) return `1 day ago`;
        if (secondsSince < 2592000) return `${Math.floor(secondsSince / 86400)} days ago`;

        if (secondsSince === 2592000) return `1 month ago`;
        if (secondsSince < 31104000) return `${Math.floor(secondsSince / 2592000)} months ago`;

        if (secondsSince === 31104000) return `1 year ago`;
        if (secondsSince > 31104000) return `${Math.floor(secondsSince / 31104000)} years ago`;
    }

    isUrl(word) {

        const urlChecker = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[\-;:&=\+\$,\w]+@)?[A-Za-z0-9\.\-]+|(?:www\.|[\-;:&=\+\$,\w]+@)[A-Za-z0-9\.\-]+)((?:\/[\+~%\/\.\w\-_]*)?\??(?:[\-\+=&;%@\.\w_]*)#?(?:[\.\!\/\\\w]*))?)/;
        return word.match(urlChecker);
    }

    formatHref(word) {
        if ((word.includes("https://") || word.includes("http://"))) return word;
        return `https://${word}`;
    }

    formatUrlsInDescription(para) {
        return (
            <>
                {para.split(" ").map((word, key) => (
                    this.isUrl(word) ?
                        <a href={this.formatHref(word)} key={key} target="_blank">{key !== 0 ? ` ${word}` : word} </a>
                        :
                        key !== 0 ? ` ${word}` : word)
                )}
            </>
        )
    }

    handleNestedComment(e) {
        this.setState({
            nestedCommentText: e.currentTarget.value
        });
    }

    render() {
        return (
            <div className="comment-show-container">
                { this.handleCommentContent(this.props.comment) }

                { this.state.showNestedInput ? 
                    <div className="comment-nested-input-container" style={{ paddingBottom: this.props.comment.childComments.length > 0 ? "20px" : 0 }}>
                        <div className="comment-nested-input">
                            <div className="comment-nested-avatar">
                                <img src={(this.props.currentUser.userPictureUrl || window.defaultAvatar)} />
                            </div>
                            <form>
                                <textarea className="comment-input"
                                    maxLength="1000"
                                    value={this.state.commentText}
                                    onChange={e => this.handleNestedComment(e)}
                                />
                                <div className="comment-form-button-container">
                                    <button
                                        style={{ marginBottom: "20px" }}
                                        disabled={this.state.nestedCommentText.length === 0}>Post Comment</button>
                                </div>
                            </form>
                        </div>
                    </div> 
                    : null 
                }

                { this.props.comment.childComments.map(childId => {
                    const subComment = this.props.track.comments[childId];
                    return (
                        <div key={subComment.id} className="comment-show-container">
                            {this.handleCommentContent(subComment)}
                        </div>
                    )
                })
                }
            </div>
        )
    }
}

export default Comment;