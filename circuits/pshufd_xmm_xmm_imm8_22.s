  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm8, %xmm9, %xmm14                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vhsubpd %xmm9, %xmm10, %xmm8                    #  3     0xa   5      OPC=vhsubpd_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label            
  unpcklpd %xmm14, %xmm1                          #  5     0x14  5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
