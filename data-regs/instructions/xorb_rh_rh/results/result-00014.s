  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  xorb %dl, %bh     #  2     0x3  2      OPC=xorb_rh_r8     
  roll $0x1, %edx   #  3     0x5  2      OPC=roll_r32_one   
  movb %bh, %ah     #  4     0x7  2      OPC=movb_rh_rh     
  retq              #  5     0x9  1      OPC=retq           
                                                            
.size target, .-target
