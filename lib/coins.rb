class Fixnum
  define_method(:coins) do |quarters, dimes, nickels|
    quarter_counter = 0
    cents_input = self
    quarter_amount = quarters
    dime_amount = dimes
    nickel_amount = nickels
    quarter_var = ''
    dime_var = ''
    nickel_var = ''
    penny_var = ''
    until cents_input < 25
      if quarter_amount < 1
        break
      end
      quarter_amount -= 1
      cents_input -= 25
      quarter_counter += 1
    end
    dime_counter = 0
    until cents_input < 10
      if dime_amount < 1
        break
      end
      dime_amount -= 1
      cents_input -= 10
      dime_counter += 1
    end
    nickel_counter = 0
    until cents_input < 5
      if nickel_amount < 1
        break
      end
      nickel_amount -= 1
      cents_input -= 5
      nickel_counter += 1
    end
    penny_counter = 0
    until cents_input < 1
      cents_input -= 1
      penny_counter += 1
    end
    if (quarter_counter == 1) && ((dime_counter != 0) || (nickel_counter != 0) || (penny_counter != 0))
      quarter_var.concat(' quarter, ')
    elsif quarter_counter == 0
      quarter_var.concat('')
      quarter_counter = ''
    elsif (penny_counter == 0) && (nickel_counter == 0) && (dime_counter == 0)
      if quarter_counter == 1
        quarter_var.concat(' quarter')
      elsif quarter_counter == 0
        quarter_var.concat('')
        quarter_counter = ''
      else
        quarter_var.concat(' quarters')
      end
    else
      quarter_var.concat(' quarters, ')
    end
    if (dime_counter == 1) && ((nickel_counter != 0) || (penny_counter != 0))
      dime_var.concat(' dime, ')
    elsif dime_counter == 0
      dime_var.concat('')
      dime_counter = ''
    elsif (penny_counter == 0) && (nickel_counter == 0)
      if dime_counter == 1
        dime_var.concat(' dime')
      elsif dime_counter == 0
        dime_var.concat('')
        dime_counter = ''
      else
        dime_var.concat(' dimes')
      end
    else
      dime_var.concat(' dimes, ')
    end
    if (nickel_counter == 1) && (penny_counter != 0)
      nickel_var.concat(' nickel, ')
    elsif nickel_counter == 0
      nickel_var.concat('')
      nickel_counter = ''
    elsif penny_counter == 0
      if nickel_counter == 1
        nickel_var.concat(' nickel')
      elsif nickel_counter == 0
        nickel_var.concat('')
        nickel_counter = ''
      else
        nickel_var.concat(' nickels')
      end
    else
      nickel_var.concat(' nickels, ')
    end
    if penny_counter == 1
      penny_var.concat(' penny')
    elsif penny_counter == 0
      penny_var.concat('')
      penny_counter = ''
    else
      penny_var.concat(' pennies')
    end
    return "#{quarter_counter}#{quarter_var}#{dime_counter}#{dime_var}#{nickel_counter}#{nickel_var}#{penny_counter}#{penny_var}."
  end
end
