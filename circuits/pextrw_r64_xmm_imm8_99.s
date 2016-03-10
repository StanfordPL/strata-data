  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  xorl %ebx, %ebx                           #  1     0     2      OPC=xorl_r32_r32   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x2   5      OPC=callq_label    
  callq .move_032_016_edx_r8w_r9w           #  3     0x7   5      OPC=callq_label    
  xaddw %r9w, %bx                           #  4     0xc   5      OPC=xaddw_r16_r16  
  retq                                      #  5     0x11  1      OPC=retq           
                                                                                     
.size target, .-target
