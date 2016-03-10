  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  movd %ebx, %xmm2                              #  2     0x5   4      OPC=movd_xmm_r32          
  vmovddup %xmm2, %xmm0                         #  3     0x9   4      OPC=vmovddup_xmm_xmm      
  unpcklps %xmm0, %xmm6                         #  4     0xd   3      OPC=unpcklps_xmm_xmm      
  vbroadcastsd %xmm6, %ymm0                     #  5     0x10  5      OPC=vbroadcastsd_ymm_xmm  
  movlhps %xmm0, %xmm1                          #  6     0x15  3      OPC=movlhps_xmm_xmm       
  retq                                          #  7     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
