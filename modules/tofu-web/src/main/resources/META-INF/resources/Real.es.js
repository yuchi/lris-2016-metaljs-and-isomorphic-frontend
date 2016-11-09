
import Component from 'metal-component/src/Component';
import Soy from 'metal-soy/src/Soy';

import templates from './Real.soy';

export default class Real extends Component {
	onClick() {
		this.counter += 1;
	}
}

Real.STATE = {
	counter: {
		value: 0
	},
	id: {
		value: ''
	}
};

Soy.register(Real, templates);
