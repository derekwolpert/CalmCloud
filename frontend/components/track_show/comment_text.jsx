import React from 'react';
import { Link } from 'react-router-dom';

class CommentText extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            showFullText: false,
        };
        this._comment = React.createRef();

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


    render() {
        debugger
        return (
            <div className="comment-show-content"
                style={{ paddingBottom: ((this.props.mainComment.childComments.length > 0) && (this.props.mainComment.id === this.props.comment.id)) ? "40px" : "", cursor: this.state.showFullText ? "pointer" : "" }}
                onClick={() => this.state.showFullText ? this.setState({ showFullText: false }) : null }
            >
                { this.state.showFullText ?
                    <div ref={(d) => this._comment = d}>
                        {this.props.comment.body.split("\n").filter(Boolean).map((el, key) => (
                            <p key={key}>{this.formatUrlsInDescription(el)}</p>))}
                    </div> :

                    <div className="user-show-biography-fade" onClick={() => this.setState({ showFullText: true })}>
                        <div ref={(d) => this._comment = d}>
                            {this.props.comment.body.split("\n").filter(Boolean).map((el, key) => (
                                <p key={key}>{this.formatUrlsInDescription(el)}</p>))}
                        </div>
                    </div> }
            </div>
        )
    }




}

export default CommentText;