  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %xmm4              #  1     0     5      OPC=vpmovsxdq_xmm_xmm  
  vmovdqa %ymm4, %ymm1                #  2     0x5   4      OPC=vmovdqa_ymm_ymm    
  callq .move_byte_11_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label        
  movzbl %r8b, %ebx                   #  4     0xe   4      OPC=movzbl_r32_r8      
  retq                                #  5     0x12  1      OPC=retq               
                                                                                   
.size target, .-target
