defprotocol Testcontainers.ContainerBuilder do
  @moduledoc """
  All types of predefined containers must implement this protocol.
  """

  @doc """
  Build a container configuration based on a concrete strategy.
  """
  @spec build(t()) :: Testcontainers.Container.t()
  def build(builder)

  @doc """
  Do stuff after container has started.
  """
  @spec after_start(t(), Testcontainers.Container.t(), Tesla.Env.t()) :: :ok
  def after_start(builder, container, connection)
end
