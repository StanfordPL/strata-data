  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  xorl %ebx, %ebx                           #  1     0     2      OPC=xorl_r32_r32   
  addb %bl, %bh                             #  2     0x2   2      OPC=addb_rh_r8     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x4   5      OPC=callq_label    
  xaddb %bh, %al                            #  4     0x9   3      OPC=xaddb_r8_rh    
  xaddw %bx, %r9w                           #  5     0xc   5      OPC=xaddw_r16_r16  
  retq                                      #  6     0x11  1      OPC=retq           
                                                                                     
.size target, .-target
