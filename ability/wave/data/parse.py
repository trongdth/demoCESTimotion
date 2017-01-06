import os
import shutil


CURRENT_PATH = "./ANIM2"
OUT_PUT = "./output"

for root, dirs, files in os.walk(CURRENT_PATH, topdown=True):
    for name in files:
        original_name = name
        new_name = name.replace("desk", "")
        new_name = new_name.replace(".txt", "")

        if os.path.exists(OUT_PUT + "/" + new_name) is False:
            os.mkdir(OUT_PUT + "/" + new_name)
	print 'copy --> ' + original_name
        shutil.copy(CURRENT_PATH + "/" + original_name, OUT_PUT + "/" + new_name + "/2.json")

