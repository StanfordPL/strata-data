  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmovq %rcx, %xmm9                  #  1     0     5      OPC=vmovq_xmm_r64         
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label           
  vmovups %xmm9, %xmm1               #  3     0xa   5      OPC=vmovups_xmm_xmm       
  vpbroadcastq %xmm1, %ymm13         #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_032_064_r10d_r11d_rcx  #  5     0x14  5      OPC=callq_label           
  vminpd %ymm9, %ymm13, %ymm2        #  6     0x19  5      OPC=vminpd_ymm_ymm_ymm    
  vminps %ymm13, %ymm2, %ymm4        #  7     0x1e  5      OPC=vminps_ymm_ymm_ymm    
  vmovq %xmm4, %rbx                  #  8     0x23  5      OPC=vmovq_r64_xmm         
  retq                               #  9     0x28  1      OPC=retq                  
                                                                                     
.size target, .-target
