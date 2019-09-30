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
        this.props.fetchUser(this.props.match.params.userId).then(() => {
            this.setState({
                loaded: true
            });
        });
    }

    render() {
        return null;
    }
}

export default UserShow;