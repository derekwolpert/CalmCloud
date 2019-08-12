import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import TrackIndexContainer from './track_index/track_index_container';
import TrackShowContainer from './track_show/track_show_container';
// import TrackUploadFormContainer from './track_upload_form/track_upload_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const BodyContainer = () => (
    <div className="body-container" >
        <ProtectedRoute exact path="/" component={TrackIndexContainer} />
        <Route exact path="/tracks/:trackId" component={TrackShowContainer} />
    </div>
);

export default BodyContainer;