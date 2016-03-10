  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  xchgb %bh, %bh                                #  1     0     2      OPC=xchgb_rh_rh           
  vmovd %ebx, %xmm2                             #  2     0x2   4      OPC=vmovd_xmm_r32         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x6   5      OPC=callq_label           
  vpbroadcastq %xmm2, %ymm5                     #  4     0xb   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x10  5      OPC=callq_label           
  retq                                          #  6     0x15  1      OPC=retq                  
                                                                                                
.size target, .-target
