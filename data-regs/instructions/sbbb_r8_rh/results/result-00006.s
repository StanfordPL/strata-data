  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %edx  #  1     0    3      OPC=movsbl_r32_rh  
  notl %edx         #  2     0x3  2      OPC=notl_r32       
  cmc               #  3     0x5  1      OPC=cmc            
  adcb %dl, %bl     #  4     0x6  2      OPC=adcb_r8_r8     
  cmc               #  5     0x8  1      OPC=cmc            
  retq              #  6     0x9  1      OPC=retq           
                                                            
.size target, .-target
