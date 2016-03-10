  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vcvtsd2ss %xmm1, %xmm1, %xmm1             #  1     0     4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label            
  xorl %r9d, %r9d                           #  3     0x9   3      OPC=xorl_r32_r32           
  callq .move_032_016_edx_r8w_r9w           #  4     0xc   5      OPC=callq_label            
  movl %r9d, %ebx                           #  5     0x11  3      OPC=movl_r32_r32           
  retq                                      #  6     0x14  1      OPC=retq                   
                                                                                             
.size target, .-target
