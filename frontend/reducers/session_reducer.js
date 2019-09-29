
import { combineReducers } from 'redux';
import sessionUserReducer from './session_user_reducer';

const sessionReducer = combineReducers({
    currentUser: sessionUserReducer
});

export default sessionReducer;