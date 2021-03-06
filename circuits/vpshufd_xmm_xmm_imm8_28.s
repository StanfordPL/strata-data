  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %ymm14           #  1     0     5      OPC=vbroadcastss_ymm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm14, %xmm10, %xmm1      #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovss %xmm10, %xmm11, %xmm4         #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm     
  movsd %xmm4, %xmm1                   #  5     0x14  4      OPC=movsd_xmm_xmm          
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
