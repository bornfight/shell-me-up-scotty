import os
from .helpers import get_user
from shutil import copyfile


def enable_vhosts():
    tmp = []

    conf_path = "/usr/local/etc/httpd/httpd.conf"

    with open(conf_path, 'r') as input_file:
        for line in input_file.readlines():
            if line == "#Include /usr/local/etc/httpd/extra/httpd-vhosts.conf\n":
                line = line.replace("#", "")
            tmp.append(line)

        input_file.close()

    with open(conf_path, 'w') as output_file:
        for line in tmp:
            output_file.write(line)

        output_file.close()


def generate_hosts():
    data_path = os.path.dirname(__file__) + "/../files/hosts"
    hosts_path = "/private/etc/hosts"

    copyfile(data_path, hosts_path)


def generate_vhosts():
    tmp = []

    data_path = os.path.dirname(__file__) + "/../files/vhosts"
    vhosts_path = "/usr/local/etc/httpd/extra/httpd-vhosts.conf"

    user = get_user()

    with open(data_path, 'r') as vhost_template:
        for line in vhost_template.readlines():
            tmp.append(line.replace("{USERNAME}", user))

        vhost_template.close()

    print(tmp)

    # with open(vhosts_path, 'w') as output_file:
    #     for line in tmp:
    #         output_file.write(line)
    #
    #     output_file.close()
