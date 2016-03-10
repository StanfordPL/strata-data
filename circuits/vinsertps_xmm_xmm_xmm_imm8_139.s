  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                     
.target:                                        #        0    0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label            
  pandn %xmm4, %xmm4                            #  2     0x5  4      OPC=pandn_xmm_xmm          
  vunpcklpd %xmm6, %xmm4, %xmm1                 #  3     0x9  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  4     0xd  1      OPC=retq                   
                                                                                                
.size target, .-target
