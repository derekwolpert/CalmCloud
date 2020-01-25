import React from 'react';

class CommentText extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            mounted: false,
            showFullText: false,
            height: null,
        };
        this._comment = React.createRef();
    }

    componentDidMount() {
        this.setState({
            mounted: true,
        });
    }

    componentDidUpdate() {

        if ((this.state.mounted && (this.state.height === null))) {
            this.setState({
                height: this._comment.offsetHeight,
            });
        }
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

        return (
            <div className="comment-show-content"
                style={{ paddingBottom: ((this.props.mainComment.childComments.length > 0) && (this.props.mainComment.id === this.props.comment.id)) ? "40px" : "" }}>
                { !this.state.height ?
                    <div ref={(a) => this._comment = a}>
                        {this.props.comment.body.split(/[\r?\n|\r]/).filter(Boolean).map((el, key) => (
                            <p key={key}>{this.formatUrlsInDescription(el)}</p>))}
                    </div> 
                    :
                    this.state.height > 120 ?
                        (this.state.showFullText ?
                            this.props.comment.body.split(/[\r?\n|\r]/).filter(Boolean).map((el, key) => (
                                <p key={key}>{this.formatUrlsInDescription(el)}</p>))
                            :
                            <div className="user-show-biography-fade" onClick={(e) => { this.setState({ showFullText: true })}}>
                                {this.props.comment.body.split(/[\r?\n|\r]/).filter(Boolean).map((el, key) => (
                                    <p key={key}>{this.formatUrlsInDescription(el)}</p>))}
                            </div>)
                        :
                        this.props.comment.body.split(/[\r?\n|\r]/).filter(Boolean).map((el, key) => (
                            <p key={key}>{this.formatUrlsInDescription(el)}</p>))

                }
                
            </div>
        )
    }




}

export default CommentText;