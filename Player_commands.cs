using Godot;
using System;

public class Player_commands : Node
{
	private Vector2 limite;
	private Vector2 Direccion = new Vector2(0, 0);
	private Vector2 Arriba = new Vector2(0, -1);
	private int velocidad = 400;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
			
	}

  	// Called every frame. 'delta' is the elapsed time since the previous frame.
  	public override void _Process(float delta)
  	{
		
  	}

	public void mover()
	{
		if(Input.IsActionPressed("ui_left"))
			Direccion.x = -velocidad;
		else if(Input.IsActionPressed("ui_right"))
			Direccion.x = velocidad;
		else
			Direccion.x = 0;
	}

	public void animar()
	{
		if(Direccion.x < 0)
		{
		}
	}
}
