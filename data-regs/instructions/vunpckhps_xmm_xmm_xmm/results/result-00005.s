  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  movdqu %xmm10, %xmm9                            #  3     0xa   5      OPC=movdqu_xmm_xmm        
  vbroadcastss %xmm13, %xmm1                      #  4     0xf   5      OPC=vbroadcastss_xmm_xmm  
  vmovlhps %xmm11, %xmm13, %xmm8                  #  5     0x14  5      OPC=vmovlhps_xmm_xmm_xmm  
  vmovshdup %xmm13, %xmm10                        #  6     0x19  5      OPC=vmovshdup_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1e  5      OPC=callq_label           
  retq                                            #  8     0x23  1      OPC=retq                  
                                                                                                  
.size target, .-target
