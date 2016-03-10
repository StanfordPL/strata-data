  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  cvttsd2sil %xmm1, %r9d                #  1     0     5      OPC=cvttsd2sil_r32_xmm  
  callq .move_r9b_to_byte_3_of_ymm1     #  2     0x5   5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label         
  vpor %xmm13, %xmm13, %xmm1            #  4     0xf   5      OPC=vpor_xmm_xmm_xmm    
  retq                                  #  5     0x14  1      OPC=retq                
                                                                                      
.size target, .-target
