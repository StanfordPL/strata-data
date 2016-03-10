  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label       
  mulsd %xmm2, %xmm8                            #  3     0xa   5      OPC=mulsd_xmm_xmm     
  haddpd %xmm5, %xmm8                           #  4     0xf   5      OPC=haddpd_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1             #  5     0x14  5      OPC=callq_label       
  unpcklpd %xmm8, %xmm1                         #  6     0x19  5      OPC=unpcklpd_xmm_xmm  
  retq                                          #  7     0x1e  1      OPC=retq              
                                                                                            
.size target, .-target
