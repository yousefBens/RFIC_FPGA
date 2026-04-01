# 2026-03-30T09:54:31.211397
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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

