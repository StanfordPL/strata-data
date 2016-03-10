  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovdqa %xmm2, %xmm1               #  1     0     4      OPC=vmovdqa_xmm_xmm  
  callq .move_032_016_ebx_r8w_r9w    #  2     0x4   5      OPC=callq_label      
  xorl %edi, %edi                    #  3     0x9   2      OPC=xorl_r32_r32     
  cmovnsl %ebx, %r9d                 #  4     0xb   4      OPC=cmovnsl_r32_r32  
  callq .move_r9b_to_byte_0_of_ymm1  #  5     0xf   5      OPC=callq_label      
  retq                               #  6     0x14  1      OPC=retq             
                                                                                
.size target, .-target
