
import Component from 'metal-component/src/Component';
import Soy from 'metal-soy/src/Soy';

import templates from './Ultimate.soy';

export default class Ultimate extends Component {
	onClick(event) {
		event.preventDefault();
		this.counter += 1;
	}
}

Ultimate.STATE = {
	counter: {
		setter(value) {
			return +value;
		},
		value: 0
	},
	id: {
		value: ''
	},
	href: {
		value: ''
	}
};

Soy.register(Ultimate, templates);
