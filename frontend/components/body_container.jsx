import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import TrackIndexContainer from './track_index/track_index_container';
import TrackNewUploadsContainer from './track_index/variations/track_new_uploads_container';
import TrackFavoritesContainer from './track_index/variations/track_favorites';
import TrackTrendingContainer from './track_index/variations/track_tending_container';
import TrackShowContainer from './track_show/track_show_container';
import TrackUploadFormContainer from './track_upload_form/track_upload_form_container';
import TrackEditFormContainer from './track_edit/track_edit_form_container';
import UserShowContainer from './user_show/user_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const BodyContainer = () => (
    <div className="body-container" >
        <ProtectedRoute exact path="/" component={TrackIndexContainer} />
        <ProtectedRoute exact path="/tracks/new-uploads" component={TrackNewUploadsContainer} />
        <ProtectedRoute exact path="/tracks/favorites" component={TrackFavoritesContainer} />
        <ProtectedRoute exact path="/tracks/trending" component={TrackTrendingContainer} />
        <Route exact path="/track/:trackId" component={TrackShowContainer} />
        <Route exact path="/track/:trackId/edit" component={TrackEditFormContainer} />
        <Route exact path="/upload" component={TrackUploadFormContainer} />
        <Route exact path="/user/:userId" component={UserShowContainer} />
    </div>
);

export default BodyContainer;