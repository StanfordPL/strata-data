  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm11, %xmm13, %xmm15                #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vhsubpd %xmm2, %xmm15, %xmm2                    #  4     0xf   4      OPC=vhsubpd_xmm_xmm_xmm    
  pmovzxbq %xmm2, %xmm1                           #  5     0x13  5      OPC=pmovzxbq_xmm_xmm       
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
