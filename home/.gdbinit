source /home/efergcz/.gdbinit-gef.py

gef config context.layout "source trace threads -extra -memory"

# These affect the "source" and the "code" windows too
gef config context.nb_lines_code 20
gef config context.nb_lines_code_prev 20

gef config context.show_extra_pc_context_info_in_source_code 0
