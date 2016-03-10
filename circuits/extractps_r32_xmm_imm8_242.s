  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vsqrtsd %xmm1, %xmm1, %xmm3     #  1     0     4      OPC=vsqrtsd_xmm_xmm_xmm     
  vaddss %xmm3, %xmm3, %xmm4      #  2     0x4   4      OPC=vaddss_xmm_xmm_xmm      
  vpunpckhdq %ymm4, %ymm4, %ymm0  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovd %xmm0, %ebx               #  4     0xc   4      OPC=vmovd_r32_xmm           
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
