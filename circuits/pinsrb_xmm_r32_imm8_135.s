  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  xorl %eax, %eax                           #  2     0x5   2      OPC=xorl_r32_r32     
  cmovngl %ebx, %r8d                        #  3     0x7   4      OPC=cmovngl_r32_r32  
  callq .move_r8b_to_byte_7_of_ymm1         #  4     0xb   5      OPC=callq_label      
  retq                                      #  5     0x10  1      OPC=retq             
                                                                                       
.size target, .-target
