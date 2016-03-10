  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  pmovsxdq %xmm1, %xmm14        #  1     0    6      OPC=pmovsxdq_xmm_xmm    
  vmovsd %xmm14, %xmm14, %xmm7  #  2     0x6  5      OPC=vmovsd_xmm_xmm_xmm  
  vmovd %xmm7, %ebx             #  3     0xb  4      OPC=vmovd_r32_xmm       
  retq                          #  4     0xf  1      OPC=retq                
                                                                             
.size target, .-target
