
import Component from 'metal-component/src/Component';
import Soy from 'metal-soy/src/Soy';

import templates from './Naive.soy';

export default class Naive extends Component {
}

Easy.STATE = {
	text: {
		value: ''
	},
	id: {
		value: ''
	}
};

Soy.register(Naive, templates);
