  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbw %bh, %sp     #  1     0    4      OPC=movsbw_r16_rh   
  cmpxchgb %spl, %cl  #  2     0x4  4      OPC=cmpxchgb_r8_r8  
  retq                #  3     0x8  1      OPC=retq            
                                                               
.size target, .-target
