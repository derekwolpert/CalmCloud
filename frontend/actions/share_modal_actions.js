export const OPEN_SHARE_MODAL = 'OPEN_SHARE_MODAL';
export const CLOSE_SHARE_MODAL = 'CLOSE_SHARE_MODAL';

export const openShareModal = modal => {
    return {
        type: OPEN_SHARE_MODAL,
        modal
    };
};

export const closeShareModal = () => {
    return {
        type: CLOSE_SHARE_MODAL
    };
};