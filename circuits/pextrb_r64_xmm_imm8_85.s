  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  movshdup %xmm1, %xmm2              #  1     0     4      OPC=movshdup_xmm_xmm      
  vmovlhps %xmm2, %xmm2, %xmm1       #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_byte_1_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label           
  movzbl %r8b, %ebx                  #  4     0xd   4      OPC=movzbl_r32_r8         
  retq                               #  5     0x11  1      OPC=retq                  
                                                                                     
.size target, .-target
