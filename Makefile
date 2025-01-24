pipeline: phpcbf phpcs phpmd strict_check phpstan

phpcbf:
	./vendor/bin/phpcbf --standard=PSR12 app/ || true

phpcs:
	./vendor/bin/phpcs --standard=PSR12 app/

phpmd:
	./vendor/bin/phpmd app/ ansi phpmd-ruleset.xml

strict_check:
	bin/check_strict_types.sh

phpstan:
	./vendor/bin/phpstan analyse --memory-limit=2G

phpstan-baseline:
	./vendor/bin/phpstan analyse --memory-limit=2G --generate-baseline
