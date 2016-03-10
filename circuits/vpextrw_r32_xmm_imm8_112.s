  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm9  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vmovdqa %ymm9, %ymm14      #  2     0x5   5      OPC=vmovdqa_ymm_ymm       
  vmovd %xmm14, %r8d         #  3     0xa   5      OPC=vmovd_r32_xmm         
  movzwq %r8w, %rbx          #  4     0xf   4      OPC=movzwq_r64_r16        
  retq                       #  5     0x13  1      OPC=retq                  
                                                                             
.size target, .-target
