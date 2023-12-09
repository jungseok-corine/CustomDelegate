//
//  DetailView.swift
//  MemberList
//
//  Created by 오정석 on 9/12/2023.
//

import UIKit

class DetailView: UIView {
    
    var member: Member?{
        didSet {
            guard var member = member else {
                //멤버가 없으면 (즉, 새로운 멤버를 추가할 때의 상황)
                //멤버가 없으면 버튼을 "SAVE"라고 셋팅
                saveButton.setTitle("SAVE", for: .normal)
                memberIdTextField.text = "\(Member.memberNumbers)"
                return
            }
            //멤버가 있으면
            mainImageView.image = member.memberImage
            memberIdTextField.text = "\(member.memberId)"
            nameTextField.text = member.name
            phoneTextField.text = member.phone
            addressTextField.text = member.address
            
            //나이 항목 (옵셔널 정수형)
            guard let age = member.age else {
                //나이 항목이 없으면 빈 문자열로 표시
                ageTextField.text = ""
                return
            }
            //나이 항목이 있으면 정수 ==> 문자열 변환표기
            ageTextField.text = "\(age)"
            
            //나이 항목의 구현
            //ageTextField.text = member.age != nil ? "\(membre.age)" : ""
        }
    }
    
    
    // MARK: - UI구현

    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .lightGray
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //정렬을 깔끔하게 하기 위한 컨테이너뷰
    lazy var imageContainView: UIView = {
        let view = UIView()
        view.addSubview(mainImageView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let memberIdLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "멤버번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let memberIdTextField : UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.clearsOnBeginEditing = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var memberIdStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [memberIdLabel, memberIdTextField])
        sv.spacing = 5
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "이  름:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.clearsOnBeginEditing = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var nameStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [nameLabel, nameTextField])
        sv.spacing = 5
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "나  이:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ageTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.clearsOnBeginEditing = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var ageStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [ageLabel, ageTextField])
        sv.spacing = 5
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "전화번호:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let phoneTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.clearsOnBeginEditing = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var phoneStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [phoneLabel, phoneTextField])
        sv.spacing = 5
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "주  소:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addressTextField: UITextField = {
        let tf = UITextField()
        tf.frame.size.height = 22
        tf.textColor = .black
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.clearsOnBeginEditing = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var addressStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [addressLabel, addressTextField])
        sv.spacing = 5
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .systemBlue
        button.setTitle("UPDATE", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame.size.height = 40
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [imageContainView, memberIdStackView, nameStackView, ageStackView, phoneStackView, addressStackView, saveButton])
        sv.spacing = 10
        sv.axis = .vertical
        sv.distribution = .fill
        sv.alignment = .fill
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //레이블 넓이 저장
    let labelWidth: CGFloat = 70
    //애니메이션을 위한 속성 선언
    var stackViewTopConstraint: NSLayoutConstraint!
    // MARK: - 생성자 세팅

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStackView() {
        self.addSubview(stackView)
    }
    
    
    
    // MARK: - 오토레이아웃 세팅

    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            mainImageView.heightAnchor.constraint(equalToConstant: 150),
            mainImageView.widthAnchor.constraint(equalToConstant: 150),
            mainImageView.centerXAnchor.constraint(equalTo: imageContainView.centerXAnchor),
            mainImageView.centerYAnchor.constraint(equalTo: imageContainView.centerYAnchor),
            
            
            imageContainView.heightAnchor.constraint(equalToConstant: 180),
            
            
            memberIdLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            nameLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            ageLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            phoneLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            addressLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            
            
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }
    
    
    
}


