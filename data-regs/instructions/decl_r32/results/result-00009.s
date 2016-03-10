  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorw %ax, %ax     #  1     0    3      OPC=xorw_r16_r16    
  decw %ax          #  2     0x3  3      OPC=decw_r16        
  movswl %ax, %r8d  #  3     0x6  4      OPC=movswl_r32_r16  
  adcl %r8d, %ebx   #  4     0xa  3      OPC=adcl_r32_r32    
  retq              #  5     0xd  1      OPC=retq            
                                                             
.size target, .-target
