  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbw %ah, %cx   #  1     0    4      OPC=movzbw_r16_rh  
  movsbl %cl, %ebx  #  2     0x4  3      OPC=movsbl_r32_r8  
  retq              #  3     0x7  1      OPC=retq           
                                                            
.size target, .-target
