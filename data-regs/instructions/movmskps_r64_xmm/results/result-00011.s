  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movaps %xmm1, %xmm12         #  1     0    4      OPC=movaps_xmm_xmm      
  vandps %xmm1, %xmm12, %xmm4  #  2     0x4  4      OPC=vandps_xmm_xmm_xmm  
  vmovmskps %xmm4, %rbx        #  3     0x8  4      OPC=vmovmskps_r64_xmm   
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
