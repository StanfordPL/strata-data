  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm1_xmm10_xmm11           #  2     0x5   5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label        
  vmovshdup %xmm11, %xmm3                       #  4     0xf   5      OPC=vmovshdup_xmm_xmm  
  movdqu %xmm13, %xmm4                          #  5     0x14  5      OPC=movdqu_xmm_xmm     
  movss %xmm6, %xmm5                            #  6     0x19  4      OPC=movss_xmm_xmm      
  movddup %xmm3, %xmm6                          #  7     0x1d  4      OPC=movddup_xmm_xmm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x21  5      OPC=callq_label        
  retq                                          #  9     0x26  1      OPC=retq               
                                                                                             
.size target, .-target
