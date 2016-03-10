  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmsubadd231pd %xmm3, %xmm1, %xmm2  #  1     0     5      OPC=vfmsubadd231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13    #  2     0x5   5      OPC=callq_label                 
  vzeroall                            #  3     0xa   3      OPC=vzeroall                    
  vminps %ymm2, %ymm15, %ymm3         #  4     0xd   4      OPC=vminps_ymm_ymm_ymm          
  vphsubd %xmm3, %xmm10, %xmm1        #  5     0x11  5      OPC=vphsubd_xmm_xmm_xmm         
  callq .move_064_128_r12_r13_xmm1    #  6     0x16  5      OPC=callq_label                 
  retq                                #  7     0x1b  1      OPC=retq                        
                                                                                            
.size target, .-target
