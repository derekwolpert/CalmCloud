
import { combineReducers } from 'redux';
import sessionUserReducer from './session_user_reducer';

const entitiesReducer = combineReducers({
    currentUser: sessionUserReducer
});

export default entitiesReducer;