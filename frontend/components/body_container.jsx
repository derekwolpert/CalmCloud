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
import UserEditContainer from './user_edit/user_edit_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const BodyContainer = () => (
    <div className="body-container" >
        <Switch>
            <ProtectedRoute exact path="/" component={TrackIndexContainer} />
            <Route exact path="/upload" component={TrackUploadFormContainer} />
            <ProtectedRoute exact path="/new-uploads" component={TrackNewUploadsContainer} />
            <ProtectedRoute exact path="/favorites" component={TrackFavoritesContainer} />
            <ProtectedRoute exact path="/trending" component={TrackTrendingContainer} />
            <ProtectedRoute exact path="/settings" component={UserEditContainer} />
            <Route exact path="/:username" component={UserShowContainer} />
            <Route exact path="/:username/uploads" component={UserShowContainer} />
            <Route exact path="/:username/favorites" component={UserShowContainer} />
            <Route exact path="/:username/followers" component={UserShowContainer} />
            <Route exact path="/:username/following" component={UserShowContainer} />
            <Route exact path="/:username/:title" component={TrackShowContainer} />
            <Route exact path="/:username/:title/edit" component={TrackEditFormContainer} />
        </Switch>
    </div>
);

export default BodyContainer;