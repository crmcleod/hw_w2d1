require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_teams')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test