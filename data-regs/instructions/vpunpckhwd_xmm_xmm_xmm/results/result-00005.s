  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpmovzxbd %xmm2, %xmm1            #  1     0     5      OPC=vpmovzxbd_xmm_xmm         
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label               
  vfnmadd231ss %xmm3, %xmm3, %xmm2  #  3     0xa   5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1    #  4     0xf   5      OPC=callq_label               
  vpunpckhwd %ymm1, %ymm2, %ymm1    #  5     0x14  4      OPC=vpunpckhwd_ymm_ymm_ymm    
  retq                              #  6     0x18  1      OPC=retq                      
                                                                                        
.size target, .-target
