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
  vzeroall                            #  3     0xa   3      OPC=vzeroall                    
  xchgb %r9b, %r9b                    #  4     0xd   3      OPC=xchgb_r8_r8                 
  callq .move_064_128_r8_r9_xmm1      #  5     0x10  5      OPC=callq_label                 
  retq                                #  6     0x15  1      OPC=retq                        
                                                                                            
.size target, .-target
