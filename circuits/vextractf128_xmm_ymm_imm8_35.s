  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                          
.target:                                #        0     0      OPC=<label>                     
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label                 
  vpxor %xmm1, %xmm13, %xmm3            #  2     0x5   4      OPC=vpxor_xmm_xmm_xmm           
  vfmsubadd231ps %xmm3, %xmm13, %xmm1   #  3     0x9   5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  movapd %xmm13, %xmm1                  #  4     0xe   5      OPC=movapd_xmm_xmm              
  retq                                  #  5     0x13  1      OPC=retq                        
                                                                                              
.size target, .-target
