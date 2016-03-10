  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  movd %ebx, %xmm11                               #  1     0     5      OPC=movd_xmm_r32          
  vpbroadcastd %xmm11, %xmm4                      #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label           
  vdivpd %xmm10, %xmm9, %xmm1                     #  4     0xf   5      OPC=vdivpd_xmm_xmm_xmm    
  vmovddup %xmm4, %xmm11                          #  5     0x14  4      OPC=vmovddup_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
