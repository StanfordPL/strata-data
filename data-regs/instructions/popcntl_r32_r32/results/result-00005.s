  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  roll $0x1, %ecx     #  1     0    2      OPC=roll_r32_one     
  xchgb %ch, %cl      #  2     0x2  2      OPC=xchgb_r8_rh      
  popcntq %rcx, %rbx  #  3     0x4  5      OPC=popcntq_r64_r64  
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
