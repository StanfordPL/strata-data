  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vzeroall                             #  1     0     3      OPC=vzeroall              
  vdivps %ymm9, %ymm5, %ymm2           #  2     0x3   5      OPC=vdivps_ymm_ymm_ymm    
  vmovhlps %xmm2, %xmm2, %xmm12        #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm  
  pmovsxdq %xmm12, %xmm11              #  4     0xc   6      OPC=pmovsxdq_xmm_xmm      
  vpmovsxdq %xmm11, %ymm1              #  5     0x12  5      OPC=vpmovsxdq_ymm_xmm     
  callq .move_128_64_xmm1_xmm12_xmm13  #  6     0x17  5      OPC=callq_label           
  vbroadcastsd %xmm13, %ymm1           #  7     0x1c  5      OPC=vbroadcastsd_ymm_xmm  
  retq                                 #  8     0x21  1      OPC=retq                  
                                                                                       
.size target, .-target
