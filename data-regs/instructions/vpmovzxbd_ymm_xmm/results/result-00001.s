  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxbd %xmm8, %xmm1                          #  2     0x5   5      OPC=vpmovzxbd_xmm_xmm   
  vpmovzxbd %xmm9, %xmm11                         #  3     0xa   5      OPC=vpmovzxbd_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm2            #  4     0xf   5      OPC=callq_label         
  pxor %xmm2, %xmm2                               #  5     0x14  4      OPC=pxor_xmm_xmm        
  vaddpd %ymm1, %ymm2, %ymm1                      #  6     0x18  4      OPC=vaddpd_ymm_ymm_ymm  
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
