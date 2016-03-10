  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  movsldup %xmm1, %xmm0               #  1     0     4      OPC=movsldup_xmm_xmm         
  vmovapd %xmm0, %xmm13               #  2     0x4   4      OPC=vmovapd_xmm_xmm          
  vmovddup %xmm2, %xmm14              #  3     0x8   4      OPC=vmovddup_xmm_xmm         
  vunpckhps %xmm2, %xmm13, %xmm10     #  4     0xc   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm10, %xmm14, %xmm13  #  5     0x10  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movapd %xmm13, %xmm1                #  6     0x15  5      OPC=movapd_xmm_xmm           
  retq                                #  7     0x1a  1      OPC=retq                     
                                                                                         
.size target, .-target
