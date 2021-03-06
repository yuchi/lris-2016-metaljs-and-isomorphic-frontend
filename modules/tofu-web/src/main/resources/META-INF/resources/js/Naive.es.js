
import Component from 'metal-component/src/Component';
import Soy from 'metal-soy/src/Soy';

import templates from './Naive.soy';

export default class Naive extends Component {
	onClick() {
		this.counter += 1;
	}
}

Naive.STATE = {
	counter: {
		value: 36
	},
	id: {
		value: ''
	}
};

Soy.register(Naive, templates);
