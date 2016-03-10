  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovq %rbx, %xmm13                 #  1     0     5      OPC=vmovq_xmm_r64    
  vsqrtpd %ymm13, %ymm1              #  2     0x5   5      OPC=vsqrtpd_ymm_ymm  
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0xa   5      OPC=callq_label      
  cmovel %ecx, %ebx                  #  4     0xf   3      OPC=cmovel_r32_r32   
  callq .move_r8b_to_byte_4_of_rbx   #  5     0x12  5      OPC=callq_label      
  retq                               #  6     0x17  1      OPC=retq             
                                                                                
.size target, .-target
