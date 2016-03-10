  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8     
  sarw $0x1, %ax   #  2     0x2  3      OPC=sarw_r16_one   
  movsbw %al, %bx  #  3     0x5  4      OPC=movsbw_r16_r8  
  shlb $0x1, %al   #  4     0x9  2      OPC=shlb_r8_one    
  sbbb %bh, %ah    #  5     0xb  2      OPC=sbbb_rh_rh     
  retq             #  6     0xd  1      OPC=retq           
                                                           
.size target, .-target
