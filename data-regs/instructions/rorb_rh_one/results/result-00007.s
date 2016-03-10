  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  movb %ah, %al   #  1     0    2      OPC=movb_r8_rh    
  sarw $0x1, %ax  #  2     0x2  3      OPC=sarw_r16_one  
  movb %al, %ah   #  3     0x5  2      OPC=movb_rh_r8    
  salb $0x1, %al  #  4     0x7  2      OPC=salb_r8_one   
  retq            #  5     0x9  1      OPC=retq          
                                                         
.size target, .-target
