  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  mulsd %xmm2, %xmm1                   #  1     0     4      OPC=mulsd_xmm_xmm        
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label          
  vhaddpd %xmm12, %xmm12, %xmm13       #  3     0x9   5      OPC=vhaddpd_xmm_xmm_xmm  
  punpckhqdq %xmm1, %xmm13             #  4     0xe   5      OPC=punpckhqdq_xmm_xmm   
  vmovapd %ymm13, %ymm12               #  5     0x13  5      OPC=vmovapd_ymm_ymm      
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x18  5      OPC=callq_label          
  retq                                 #  7     0x1d  1      OPC=retq                 
                                                                                      
.size target, .-target
