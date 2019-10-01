import React from 'react';
import { Link } from 'react-router-dom';


class UserShow extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            loaded: false
        };
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchUser(this.props.match.params.username).then(() => {
            this.setState({
                loaded: true
            });
        });
    }

    render() {
        return <span>{this.props.user ? this.props.user.display_name : null}</span>
    }
}

export default UserShow;