  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmaddsub231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfmaddsub231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9      #  2     0x5   5      OPC=callq_label                 
  xchgw %r9w, %r9w                    #  3     0xa   4      OPC=xchgw_r16_r16               
  vzeroall                            #  4     0xe   3      OPC=vzeroall                    
  callq .move_064_128_r8_r9_xmm2      #  5     0x11  5      OPC=callq_label                 
  vorps %ymm2, %ymm5, %ymm1           #  6     0x16  4      OPC=vorps_ymm_ymm_ymm           
  retq                                #  7     0x1a  1      OPC=retq                        
                                                                                            
.size target, .-target
