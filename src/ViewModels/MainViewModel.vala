/* Replay - Explore and watch YouTube videos
 * Copyright 2019 - 2020 Nahuel Gomez Castro <nahual_gomca@outlook.com.ar>
 *
 * Replay is free software: you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * Replay is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Replay.  If not, see <https://www.gnu.org/licenses/>.
 */

public class Rpy.MainViewModel : GLib.Object
{
	private Rpy.ObservableList<Rpy.View> _views;


	public Rpy.View current_view { get; set; }

	public Rpy.ObservableList<Rpy.View> views
	{
		get { return this._views; }
	}


	construct
	{
		this._views = new Rpy.ObservableList<Rpy.View>.wrap ({
			new Rpy.HomeView (),
			new Rpy.TrendsView (),
			new Rpy.SubscriptionsView (),
			new Rpy.LibraryView (),
			new Rpy.FavoritesView (),
			new Rpy.HistoryView (),
			new Rpy.WatchLaterView (),
			new Rpy.PlaylistsView (),
			new Rpy.SearchView ()
		});
	}
}