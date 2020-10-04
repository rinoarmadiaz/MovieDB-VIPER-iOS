//
//  DashboardViewController.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

final class DashboardViewController: UIViewController {
    
    @IBOutlet weak private var _tableView: UITableView!
    
    var presenter: DashboardPresenterInterface!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        _setupTableView()
        navigationItem.title = "Movie List"
    }
    
    func _setupTableView() {
        _tableView.delegate = self
        _tableView.dataSource = self
        _tableView.backgroundColor = .clear
        _tableView.backgroundView = UIView()
        _tableView.allowsSelection = true
        _tableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
    }
    
}

extension DashboardViewController: DashboardViewInterface, UITableViewDelegate, UITableViewDataSource {
    func reloadView() {
        DispatchQueue.main.async {
            self._tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.movieList?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let movie = presenter.movieList?.results[indexPath.row], let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        cell.separatorInset = UIEdgeInsets.zero
        cell.setupView(movie)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selectedMovie = presenter.movieList?.results[indexPath.row] else { return }
        presenter.didPressNavigateToMovieDetail(selectedMovie)
    }
}
