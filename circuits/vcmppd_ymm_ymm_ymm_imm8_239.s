  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vzeroall                                      #  1     0     3      OPC=vzeroall              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label           
  vdivps %xmm5, %xmm11, %xmm6                   #  3     0x8   4      OPC=vdivps_xmm_xmm_xmm    
  vpmovsxdq %xmm6, %ymm10                       #  4     0xc   5      OPC=vpmovsxdq_ymm_xmm     
  vmovshdup %xmm10, %xmm15                      #  5     0x11  5      OPC=vmovshdup_xmm_xmm     
  vpbroadcastq %xmm15, %ymm1                    #  6     0x16  5      OPC=vpbroadcastq_ymm_xmm  
  retq                                          #  7     0x1b  1      OPC=retq                  
                                                                                                
.size target, .-target
