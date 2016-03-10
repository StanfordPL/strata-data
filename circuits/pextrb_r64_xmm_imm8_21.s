  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm5, %ymm0                     #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhps %ymm0, %ymm0, %ymm1                 #  3     0xa   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmovq %xmm1, %rcx                             #  4     0xe   5      OPC=vmovq_r64_xmm          
  movzbw %ch, %ax                               #  5     0x13  4      OPC=movzbw_r16_rh          
  movzbq %al, %rbx                              #  6     0x17  4      OPC=movzbq_r64_r8          
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
