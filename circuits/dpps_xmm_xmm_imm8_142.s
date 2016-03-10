  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  mulps %xmm2, %xmm1                              #  1     0     3      OPC=mulps_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label           
  haddps %xmm8, %xmm11                            #  3     0x8   5      OPC=haddps_xmm_xmm        
  vpbroadcastd %xmm11, %ymm12                     #  4     0xd   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm3              #  5     0x12  5      OPC=callq_label           
  movsldup %xmm12, %xmm1                          #  6     0x17  5      OPC=movsldup_xmm_xmm      
  cvtsd2ss %xmm3, %xmm1                           #  7     0x1c  4      OPC=cvtsd2ss_xmm_xmm      
  retq                                            #  8     0x20  1      OPC=retq                  
                                                                                                  
.size target, .-target
