/// @desc transition

switch (trans_state)
{
	case TRANS_STATE.INTRO:
	{
		trans_state = TRANS_STATE.OFF;
		break;
	}
	case TRANS_STATE.GOTO:
	{
		trans_state = TRANS_STATE.INTRO;
		room_goto(room_target);
		break;
	}
}