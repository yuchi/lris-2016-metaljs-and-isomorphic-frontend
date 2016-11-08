
import Component from 'metal-component/src/Component';
import Soy from 'metal-soy/src/Soy';

import templates from './Easy.soy';

export default class Easy extends Component {
	onClick() {
		this.counter += 1;
	}
}

Easy.STATE = {
	counter: {
		value: 0
	},
	id: {
		value: ''
	}
};

Soy.register(Easy, templates);
