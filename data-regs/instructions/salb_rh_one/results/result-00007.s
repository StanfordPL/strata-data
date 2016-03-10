  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %di  #  1     0    4      OPC=movzbw_r16_rh  
  xorb %al, %al    #  2     0x4  2      OPC=xorb_r8_r8     
  shlb $0x1, %dil  #  3     0x6  3      OPC=shlb_r8_one    
  stc              #  4     0x9  1      OPC=stc            
  rclw $0x1, %ax   #  5     0xa  3      OPC=rclw_r16_one   
  retq             #  6     0xd  1      OPC=retq           
                                                           
.size target, .-target
