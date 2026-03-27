# 2026-03-27T13:10:29.638219
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

platform = client.get_component(name="RFIC_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="RFIC_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

