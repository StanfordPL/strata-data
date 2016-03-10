  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movddup %xmm2, %xmm3               #  1     0     4      OPC=movddup_xmm_xmm          
  vpunpckhdq %xmm3, %xmm2, %xmm1     #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpbroadcastb %xmm1, %xmm5          #  3     0x8   5      OPC=vpbroadcastb_xmm_xmm     
  vpunpckhqdq %xmm5, %xmm2, %xmm4    #  4     0xd   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovddup %ymm1, %ymm14             #  5     0x11  4      OPC=vmovddup_ymm_ymm         
  vmovss %xmm3, %xmm4, %xmm11        #  6     0x15  4      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm14, %xmm11, %xmm1  #  7     0x19  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  8     0x1e  1      OPC=retq                     
                                                                                        
.size target, .-target
