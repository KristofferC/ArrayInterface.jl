module ArrayInterfaceTracker

using ArrayInterface
using Tracker

ArrayInterface.ismutable(::Type{<:Tracker.TrackedArray}) = false
ArrayInterface.ismutable(T::Type{<:Tracker.TrackedReal}) = false
ArrayInterface.can_setindex(::Type{<:Tracker.TrackedArray}) = false
ArrayInterface.fast_scalar_indexing(::Type{<:Tracker.TrackedArray}) = false
ArrayInterface.aos_to_soa(x::AbstractArray{<:Tracker.TrackedReal,N}) where {N} = Tracker.collect(x)

end # module
