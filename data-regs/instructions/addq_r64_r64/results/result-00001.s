  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  popcntq %rcx, %r12  #  1     0    5      OPC=popcntq_r64_r64  
  adcq %rbx, %rcx     #  2     0x5  3      OPC=adcq_r64_r64     
  movq %rcx, %rbx     #  3     0x8  3      OPC=movq_r64_r64     
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
