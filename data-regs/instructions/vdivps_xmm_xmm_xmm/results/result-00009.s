  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vminps %xmm3, %xmm3, %xmm8    #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovupd %xmm2, %xmm1          #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vmovdqa %ymm8, %ymm12         #  3     0x8   5      OPC=vmovdqa_ymm_ymm     
  vdivps %ymm12, %ymm1, %ymm14  #  4     0xd   5      OPC=vdivps_ymm_ymm_ymm  
  vmovupd %xmm14, %xmm1         #  5     0x12  5      OPC=vmovupd_xmm_xmm     
  retq                          #  6     0x17  1      OPC=retq                
                                                                              
.size target, .-target
