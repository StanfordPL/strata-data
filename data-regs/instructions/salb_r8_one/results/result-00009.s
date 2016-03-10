  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorw %ax, %ax   #  1     0    3      OPC=xorw_r16_r16  
  xaddb %al, %bl  #  2     0x3  3      OPC=xaddb_r8_r8   
  adcb %ah, %bl   #  3     0x6  2      OPC=adcb_r8_rh    
  rclb $0x1, %bl  #  4     0x8  2      OPC=rclb_r8_one   
  shlb $0x1, %al  #  5     0xa  2      OPC=shlb_r8_one   
  retq            #  6     0xc  1      OPC=retq          
                                                         
.size target, .-target
