  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovdqa %ymm2, %ymm1                 #  1     0     4      OPC=vmovdqa_ymm_ymm       
  vmovhlps %xmm2, %xmm1, %xmm12        #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  vminsd %xmm2, %xmm2, %xmm13          #  3     0x8   4      OPC=vminsd_xmm_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xc   5      OPC=callq_label           
  retq                                 #  5     0x11  1      OPC=retq                  
                                                                                       
.size target, .-target
