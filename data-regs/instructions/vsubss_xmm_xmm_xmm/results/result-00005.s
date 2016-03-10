  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vbroadcastss %xmm3, %ymm1        #  1     0     5      OPC=vbroadcastss_ymm_xmm     
  vdivsd %xmm1, %xmm1, %xmm6       #  2     0x5   4      OPC=vdivsd_xmm_xmm_xmm       
  vfmsub231ss %xmm6, %xmm2, %xmm3  #  3     0x9   5      OPC=vfmsub231ss_xmm_xmm_xmm  
  vaddss %xmm3, %xmm2, %xmm9       #  4     0xe   4      OPC=vaddss_xmm_xmm_xmm       
  vmovaps %xmm9, %xmm1             #  5     0x12  5      OPC=vmovaps_xmm_xmm          
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
