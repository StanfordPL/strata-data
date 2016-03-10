  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vfnmsub132ps %xmm4, %xmm5, %xmm7              #  2     0x5   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vfmsub213sd %xmm2, %xmm7, %xmm5               #  3     0xa   5      OPC=vfmsub213sd_xmm_xmm_xmm   
  vfmsub213sd %xmm3, %xmm5, %xmm1               #  4     0xf   5      OPC=vfmsub213sd_xmm_xmm_xmm   
  retq                                          #  5     0x14  1      OPC=retq                      
                                                                                                    
.size target, .-target
