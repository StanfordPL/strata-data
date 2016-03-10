  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode            
.target:             #        0     0      OPC=<label>       
  xorw %r12w, %r12w  #  1     0     4      OPC=xorw_r16_r16  
  seto %bl           #  2     0x4   3      OPC=seto_r8       
  rclb $0x1, %bl     #  3     0x7   2      OPC=rclb_r8_one   
  movb %ah, %bh      #  4     0x9   2      OPC=movb_rh_rh    
  notw %bx           #  5     0xb   3      OPC=notw_r16      
  xorb %bl, %ah      #  6     0xe   2      OPC=xorb_rh_r8    
  retq               #  7     0x10  1      OPC=retq          
                                                             
.size target, .-target
