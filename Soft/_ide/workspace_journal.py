# 2026-10-26T16:18:23.419147
import vitis

client = vitis.create_client()
client.set_workspace(path="Soft")

platform = client.get_component(name="RFIC_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="RFIC_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

