
3.6/content_sets.yml: src/content_sets.yml $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/root/opt/app-root/etc/generate_container_user: src/root/opt/app-root/etc/generate_container_user $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/s2i/bin/run: src/s2i/bin/run $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@; \
	chmod 0755 '$@'

3.6/test/pipenv-test-app/testapp.py: examples/pipenv-test-app/testapp.py $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/test/pipenv-test-app/setup.py: examples/pipenv-test-app/setup.py $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/test/pipenv-test-app/.s2i/environment: examples/pipenv-test-app/.s2i/environment $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/test/pipenv-test-app/.gitignore: examples/pipenv-test-app/.gitignore $(MANIFEST_FILE)
	$(V_CP)$(CDIR) \
	cp $< $@

3.6/cccp.yml: src/cccp.yml $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"

3.6/README.md: src/README.md $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"

3.6/root/opt/app-root/etc/scl_enable: src/root/opt/app-root/etc/scl_enable $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"

3.6/s2i/bin/assemble: src/s2i/bin/assemble $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"; \
	chmod 0755 '$@'

3.6/s2i/bin/usage: src/s2i/bin/usage $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"; \
	chmod 0755 '$@'

3.6/test/pipenv-test-app/Pipfile: src/test/pipenv-test-app/Pipfile $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"

3.6/test/pipenv-test-app/Pipfile.lock: src/test/pipenv-test-app/Pipfile.lock $(MANIFEST_FILE)
	$(V_DG)$(CDIR) \
	$(DG) --multispec specs/multispec.yml \
	--template "$<" --distro centos-7-x86_64.yaml \
	--multispec-selector version="3.6" --output "$@"

3.6/test/app-home-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/app-home-test-app $@

3.6/test/django-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/django-test-app $@

3.6/test/locale-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/locale-test-app $@

3.6/test/mod-wsgi-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/mod-wsgi-test-app $@

3.6/test/npm-virtualenv-uwsgi-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/npm-virtualenv-uwsgi-test-app $@

3.6/test/numpy-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/numpy-test-app $@

3.6/test/setup-requirements-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/setup-requirements-test-app $@

3.6/test/setup-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/setup-test-app $@

3.6/test/standalone-test-app:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../examples/standalone-test-app $@

3.6/test/run:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../test/run $@

3.6/test/run-openshift:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../test/run-openshift $@

3.6/test/test-lib.sh:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../common/test-lib.sh $@

3.6/test/test-lib-openshift.sh:  $(MANIFEST_FILE)
	$(V_LN)$(CDIR) \
	ln -fs ../../common/test-lib-openshift.sh $@
