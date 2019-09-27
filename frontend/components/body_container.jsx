import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import TrackIndexContainer from './track_index/track_index_container';
import TrackNewUploadsContainer from './track_index/variations/track_new_uploads_container';
import TrackTrendingContainer from './track_index/variations/track_tending_container';
import TrackShowContainer from './track_show/track_show_container';
import TrackUploadFormContainer from './track_upload_form/track_upload_form_container';
import TrackEditFormContainer from './track_edit/track_edit_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const BodyContainer = () => (
    <div className="body-container" >
        <ProtectedRoute exact path="/" component={TrackIndexContainer} />
        <ProtectedRoute Route exact path="/trending" component={TrackTrendingContainer} />
        <ProtectedRoute exact path="/new-uploads" component={TrackNewUploadsContainer} />
        <Route exact path="/track/:trackId" component={TrackShowContainer} />
        <Route exact path="/track/:trackId/edit" component={TrackEditFormContainer} />
        <Route exact path="/upload" component={TrackUploadFormContainer} />
    </div>
);

export default BodyContainer;