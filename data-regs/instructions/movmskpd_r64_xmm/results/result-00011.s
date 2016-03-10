  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vsqrtsd %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vsqrtsd_xmm_xmm_xmm  
  vmovdqu %ymm15, %ymm14        #  2     0x4  5      OPC=vmovdqu_ymm_ymm      
  vmovmskpd %xmm14, %ebx        #  3     0x9  5      OPC=vmovmskpd_r32_xmm    
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
