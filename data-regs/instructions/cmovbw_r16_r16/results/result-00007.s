  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %edx    #  1     0    3      OPC=movswl_r32_r16   
  cmc                 #  2     0x3  1      OPC=cmc              
  cmovncl %edx, %ebx  #  3     0x4  3      OPC=cmovncl_r32_r32  
  retq                #  4     0x7  1      OPC=retq             
                                                                
.size target, .-target
