  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label           
  pmovsxdq %xmm9, %xmm2                         #  2     0x5   6      OPC=pmovsxdq_xmm_xmm      
  vpbroadcastq %xmm8, %ymm14                    #  3     0xb   5      OPC=vpbroadcastq_ymm_xmm  
  vcvtss2sil %xmm14, %ebx                       #  4     0x10  5      OPC=vcvtss2sil_r32_xmm    
  vrcpss %xmm2, %xmm2, %xmm3                    #  5     0x15  4      OPC=vrcpss_xmm_xmm_xmm    
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  6     0x19  5      OPC=callq_label           
  xaddl %ebx, %r12d                             #  7     0x1e  4      OPC=xaddl_r32_r32         
  retq                                          #  8     0x22  1      OPC=retq                  
                                                                                                
.size target, .-target
