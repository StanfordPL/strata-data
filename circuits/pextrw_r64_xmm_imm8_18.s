  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  cmpxchgb %al, %r9b                        #  2     0x5   4      OPC=cmpxchgb_r8_r8  
  xorl %r8d, %r9d                           #  3     0x9   3      OPC=xorl_r32_r32    
  callq .read_sf_into_rbx                   #  4     0xc   5      OPC=callq_label     
  movw %dx, %bx                             #  5     0x11  3      OPC=movw_r16_r16    
  retq                                      #  6     0x14  1      OPC=retq            
                                                                                      
.size target, .-target
