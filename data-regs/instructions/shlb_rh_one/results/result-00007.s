  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  clc                               #  1     0     1      OPC=clc           
  callq .read_cf_into_rbx           #  2     0x1   5      OPC=callq_label   
  callq .move_byte_4_of_rbx_to_r9b  #  3     0x6   5      OPC=callq_label   
  decw %bx                          #  4     0xb   3      OPC=decw_r16      
  rolw $0x1, %bx                    #  5     0xe   3      OPC=rolw_r16_one  
  movb %ah, %bl                     #  6     0x11  2      OPC=movb_r8_rh    
  callq .move_r9b_to_byte_7_of_rbx  #  7     0x13  5      OPC=callq_label   
  xorw %ax, %ax                     #  8     0x18  3      OPC=xorw_r16_r16  
  adcb %bl, %bl                     #  9     0x1b  2      OPC=adcb_r8_r8    
  movb %bl, %ah                     #  10    0x1d  2      OPC=movb_rh_r8    
  retq                              #  11    0x1f  1      OPC=retq          
                                                                            
.size target, .-target
