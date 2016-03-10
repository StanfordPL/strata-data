  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %xmm1, %xmm7  #  1     0    4      OPC=vmovaps_xmm_xmm  
  movhlps %xmm1, %xmm7  #  2     0x4  3      OPC=movhlps_xmm_xmm  
  vmovq %xmm7, %rbx     #  3     0x7  5      OPC=vmovq_r64_xmm    
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
