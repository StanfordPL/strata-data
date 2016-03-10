  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vpmovzxdq %xmm7, %xmm1                        #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm         
  vmovapd %xmm5, %xmm7                          #  3     0xa   4      OPC=vmovapd_xmm_xmm           
  vunpcklps %xmm1, %xmm5, %xmm4                 #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm     
  vfnmsub132pd %xmm5, %xmm1, %xmm5              #  5     0x12  5      OPC=vfnmsub132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label               
  retq                                          #  7     0x1c  1      OPC=retq                      
                                                                                                    
.size target, .-target
