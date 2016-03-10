  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm9               #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm1, %xmm9, %xmm6        #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovdqa %ymm6, %ymm11                #  3     0x8   4      OPC=vmovdqa_ymm_ymm        
  callq .move_128_64_xmm2_xmm12_xmm13  #  4     0xc   5      OPC=callq_label            
  vmovss %xmm13, %xmm12, %xmm13        #  5     0x11  5      OPC=vmovss_xmm_xmm_xmm     
  vminps %xmm6, %xmm11, %xmm12         #  6     0x16  4      OPC=vminps_xmm_xmm_xmm     
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1a  5      OPC=callq_label            
  retq                                 #  8     0x1f  1      OPC=retq                   
                                                                                        
.size target, .-target
