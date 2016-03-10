  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm7          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vmovlhps %xmm2, %xmm1, %xmm11   #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm   
  vunpckhps %xmm7, %xmm11, %xmm3  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhqdq %xmm3, %xmm1         #  4     0xc   4      OPC=punpckhqdq_xmm_xmm     
  movss %xmm11, %xmm1             #  5     0x10  5      OPC=movss_xmm_xmm          
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
