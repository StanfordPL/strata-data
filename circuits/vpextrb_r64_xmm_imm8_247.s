  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpunpckldq %xmm1, %xmm1, %xmm2     #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm    
  vmulss %xmm2, %xmm1, %xmm8         #  2     0x4   4      OPC=vmulss_xmm_xmm_xmm        
  vfnmsub132ss %xmm8, %xmm8, %xmm1   #  3     0x8   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label               
  movzbl %r9b, %ebx                  #  5     0x12  4      OPC=movzbl_r32_r8             
  retq                               #  6     0x16  1      OPC=retq                      
                                                                                         
.size target, .-target
