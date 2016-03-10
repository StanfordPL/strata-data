  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vfmaddsub231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfmaddsub231pd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13    #  2     0x5   5      OPC=callq_label                 
  vzeroall                            #  3     0xa   3      OPC=vzeroall                    
  callq .move_064_128_r12_r13_xmm2    #  4     0xd   5      OPC=callq_label                 
  vfmaddsub132pd %xmm4, %xmm9, %xmm1  #  5     0x12  5      OPC=vfmaddsub132pd_xmm_xmm_xmm  
  movaps %xmm2, %xmm1                 #  6     0x17  3      OPC=movaps_xmm_xmm              
  retq                                #  7     0x1a  1      OPC=retq                        
                                                                                            
.size target, .-target
