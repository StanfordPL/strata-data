  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzwl %bx, %r10d   #  1     0    4      OPC=movzwl_r32_r16  
  xaddw %r10w, %bx    #  2     0x4  5      OPC=xaddw_r16_r16   
  xaddw %r10w, %r10w  #  3     0x9  5      OPC=xaddw_r16_r16   
  retq                #  4     0xe  1      OPC=retq            
                                                               
.size target, .-target
