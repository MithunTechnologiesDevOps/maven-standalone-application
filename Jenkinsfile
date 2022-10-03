pipeline {
	agent any
	stages {
		stage(stage1) {
			steps {
				sh 'echo "stage1 running from master branch with WEBHOOKS" '   
			}
		}
		stage(stage2) {
			steps {
				sh 'echo "stage2 running from master branch with WEBHOOKS" '
			}
		}
	}
}
