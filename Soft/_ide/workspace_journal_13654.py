# 2026-04-15T09:25:42.962345
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

platform = client.get_component(name="RFIC_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="RFIC_app")
comp.build()

vitis.dispose()

