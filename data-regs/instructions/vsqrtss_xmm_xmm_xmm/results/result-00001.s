  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vsqrtps %xmm3, %xmm6        #  1     0     4      OPC=vsqrtps_xmm_xmm     
  vmovss %xmm6, %xmm2, %xmm2  #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm  
  vmovaps %xmm2, %xmm11       #  3     0x8   4      OPC=vmovaps_xmm_xmm     
  vmovdqa %ymm11, %ymm1       #  4     0xc   5      OPC=vmovdqa_ymm_ymm     
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
