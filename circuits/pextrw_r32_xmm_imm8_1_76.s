  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovsldup %xmm11, %xmm13             #  2     0x5   5      OPC=vmovsldup_xmm_xmm     
  vandpd %xmm13, %xmm13, %xmm9         #  3     0xa   5      OPC=vandpd_xmm_xmm_xmm    
  vpbroadcastw %xmm9, %ymm10           #  4     0xf   5      OPC=vpbroadcastw_ymm_xmm  
  vmovd %xmm10, %ebx                   #  5     0x14  4      OPC=vmovd_r32_xmm         
  movzwq %bx, %r11                     #  6     0x18  4      OPC=movzwq_r64_r16        
  xchgq %rbx, %r11                     #  7     0x1c  3      OPC=xchgq_r64_r64         
  retq                                 #  8     0x1f  1      OPC=retq                  
                                                                                       
.size target, .-target
