# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule cupynumeric_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("cupynumeric")
JLLWrappers.@generate_main_file("cupynumeric", UUID("2862d674-414d-5b0b-a494-b21f8deca547"))
end  # module cupynumeric_jll
