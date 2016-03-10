  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  vmovq %rbx, %xmm15  #  1     0    5      OPC=vmovq_xmm_r64  
  addq %rcx, %rbx     #  2     0x5  3      OPC=addq_r64_r64   
  movq %xmm15, %rcx   #  3     0x8  5      OPC=movq_r64_xmm   
  retq                #  4     0xd  1      OPC=retq           
                                                              
.size target, .-target
