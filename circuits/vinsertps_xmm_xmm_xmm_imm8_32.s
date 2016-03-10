  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vfmsubadd213ps %xmm3, %xmm7, %xmm1            #  2     0x5   5      OPC=vfmsubadd213ps_xmm_xmm_xmm  
  vunpcklps %xmm1, %xmm3, %xmm1                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm       
  movdqa %xmm1, %xmm6                           #  4     0xe   4      OPC=movdqa_xmm_xmm              
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label                 
  retq                                          #  6     0x17  1      OPC=retq                        
                                                                                                      
.size target, .-target
