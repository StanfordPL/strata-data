  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm11  #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  cvttss2sil %xmm11, %ebx     #  2     0x5  5      OPC=cvttss2sil_r32_xmm    
  retq                        #  3     0xa  1      OPC=retq                  
                                                                             
.size target, .-target
