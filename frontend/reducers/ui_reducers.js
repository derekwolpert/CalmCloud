import { combineReducers } from 'redux';
import modalReducer from './modal_reducer';
import footerPlayerReducer from "./footer_player_reducer";
import playingReducer from './playing_reducer';
import percentReducer from './percent_reducer';


const uiReducer = combineReducers({
    modal: modalReducer,
    currentTrack: footerPlayerReducer,
    playing: playingReducer,
    percent: percentReducer,
});

export default uiReducer;