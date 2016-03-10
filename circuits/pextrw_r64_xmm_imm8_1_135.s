  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ecx           #  2     0x5   5      OPC=callq_label     
  xchgl %edx, %r9d                          #  3     0xa   3      OPC=xchgl_r32_r32   
  tzcntl %ecx, %ebx                         #  4     0xd   4      OPC=tzcntl_r32_r32  
  callq .move_032_016_edx_r8w_r9w           #  5     0x11  5      OPC=callq_label     
  movw %r9w, %bx                            #  6     0x16  4      OPC=movw_r16_r16    
  retq                                      #  7     0x1a  1      OPC=retq            
                                                                                      
.size target, .-target
