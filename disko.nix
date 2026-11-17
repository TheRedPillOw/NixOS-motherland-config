{
	disko.devices = {
		disk = {
			main = {
				device = "/dev/nvme0n1";
				type = "disk";
				content = {
					type = "gpt";
					partitions = {
						ESP = {
							label = "BOOT";
							name = "ESP";
							size = "1G";
							type = "EF00";
							content = {
								type = "filesystem";
								format = "vfat";
								mountpoint = "/boot";
							}
						}
					}
				}
			}
		}
	}
}
