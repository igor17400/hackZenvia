//
//  MessagesViewController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit
import Charts

class MessagesViewController: UIViewController {
    
    let faixa_etaria = ["18-24", "25-34", "35-44", "45-54", "55-64", "65+"]
    let per_idade = [45, 30, 10, 6, 5, 4]
    
    let genero = ["Homens", "Mulheres"]
    let perc = [30, 70]
    
    let dias = ["segunda", "terça", "quarta", "quinta", "sexta"]
    let lead_dia  = [5, 2, 3, 4, 2]
    
    @IBOutlet weak var pieChartView: PieChartView!
    @IBOutlet weak var pieChartViewTwo: PieChartView!
    @IBOutlet weak var barChartView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizePieChart(dataPoints: genero, values: perc.map{ Double($0) }, pieChartView: pieChartView)
        
        customizePieChart(dataPoints: faixa_etaria, values: per_idade.map{ Double($0) }, pieChartView: pieChartViewTwo)
        
        customizeBarChart(dataPoints: dias, values: lead_dia.map{ Double($0) }, barChartView: barChartView)
    }
    
    func customizeBarChart(dataPoints: [String], values: [Double], barChartView: BarChartView) {
        
        barChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values:dataPoints)
        barChartView.xAxis.granularity = 1
        
        var dataEntries: [BarChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry =
                BarChartDataEntry(
                    x: Double(i),
                    y: Double(values[i]))
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Leads por dia da semana")
        chartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
        
        let chartData = BarChartData(dataSet: chartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        chartData.setValueFormatter(formatter)
        
        barChartView.data = chartData
        
    }
    
    func customizePieChart(dataPoints: [String], values: [Double], pieChartView: PieChartView) {
        
        // 1. Set ChartDataEntry
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data: dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
        
        // 2. Set ChartDataSet
        let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: nil)
        pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
        
        // 3. Set ChartData
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        let format = NumberFormatter()
        format.numberStyle = .none
        let formatter = DefaultValueFormatter(formatter: format)
        pieChartData.setValueFormatter(formatter)
        
        // 4. Assign it to the chart’s data
        pieChartView.data = pieChartData
    }
    
    private func colorsOfCharts(numbersOfColor: Int) -> [UIColor] {
        
        let num_colors_red = [18, 15, 52, 187, 39, 77]
        let num_colors_green = [1, 76, 46, 225, 73, 76]
        let num_colors_blue = [54, 117, 173, 250, 109, 125]
        
        var colors: [UIColor] = []
        for i in 0..<(numbersOfColor+1) {
            let red = Double(num_colors_red[i%num_colors_red.count])
            let green = Double(num_colors_green[i%num_colors_green.count])
            let blue = Double(num_colors_blue[i%num_colors_blue.count])
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        return colors
    }
}
