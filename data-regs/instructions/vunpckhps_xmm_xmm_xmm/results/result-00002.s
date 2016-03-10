  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm8_xmm9             #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label         
  vmovsd %xmm9, %xmm2, %xmm5                    #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13           #  4     0xf   5      OPC=callq_label         
  pmovzxdq %xmm13, %xmm4                        #  5     0x14  6      OPC=pmovzxdq_xmm_xmm    
  andnps %xmm5, %xmm6                           #  6     0x1a  3      OPC=andnps_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  7     0x1d  5      OPC=callq_label         
  vorpd %xmm4, %xmm3, %xmm1                     #  8     0x22  4      OPC=vorpd_xmm_xmm_xmm   
  retq                                          #  9     0x26  1      OPC=retq                
                                                                                              
.size target, .-target
