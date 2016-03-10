  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovss %xmm2, %xmm2, %xmm11           #  1     0     4      OPC=vmovss_xmm_xmm_xmm    
  vpmovsxdq %xmm2, %ymm1                #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm     
  vmovq %xmm2, %xmm8                    #  3     0x9   4      OPC=vmovq_xmm_xmm         
  movhlps %xmm8, %xmm1                  #  4     0xd   4      OPC=movhlps_xmm_xmm       
  vpbroadcastw %xmm1, %ymm10            #  5     0x11  5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x16  5      OPC=callq_label           
  retq                                  #  7     0x1b  1      OPC=retq                  
                                                                                        
.size target, .-target
