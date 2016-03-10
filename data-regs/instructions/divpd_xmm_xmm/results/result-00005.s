  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm3         #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovss %xmm1, %xmm1, %xmm0   #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm  
  vdivpd %ymm3, %ymm0, %ymm12  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  pandn %xmm1, %xmm1           #  4     0xc   4      OPC=pandn_xmm_xmm       
  pxor %xmm12, %xmm1           #  5     0x10  5      OPC=pxor_xmm_xmm        
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
