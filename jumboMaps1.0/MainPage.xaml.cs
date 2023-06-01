namespace jumboMaps1._0;

public partial class MainPage : ContentPage
{
	int count = 0;

	public MainPage()
	{
		InitializeComponent();
	}

	private void OnCounterClicked(object sender, EventArgs e)
	{
		count++;

		if (count == 1)
			CounterBtn.Text = $"You have clicked {count} time";
		else
			CounterBtn.Text = $"Wait... you have clicked {count} times";

		SemanticScreenReader.Announce(CounterBtn.Text);
	}
}

