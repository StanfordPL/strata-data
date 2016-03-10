  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vfnmsub213sd %xmm4, %xmm4, %xmm4              #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  vfmsub231pd %xmm7, %xmm4, %xmm2               #  3     0xa   5      OPC=vfmsub231pd_xmm_xmm_xmm   
  vfnmsub132sd %xmm3, %xmm2, %xmm1              #  4     0xf   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  retq                                          #  5     0x14  1      OPC=retq                      
                                                                                                    
.size target, .-target
