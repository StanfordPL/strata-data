  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovapd %xmm2, %xmm12                 #  1     0     4      OPC=vmovapd_xmm_xmm     
  vminps %xmm12, %xmm12, %xmm13         #  2     0x4   5      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm2  #  3     0x9   5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm1   #  4     0xe   5      OPC=callq_label         
  punpckhqdq %xmm2, %xmm1               #  5     0x13  4      OPC=punpckhqdq_xmm_xmm  
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
