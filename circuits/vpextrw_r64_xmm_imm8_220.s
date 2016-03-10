  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  xorl %r13d, %r13d                         #  1     0     3      OPC=xorl_r32_r32    
  callq .read_cf_into_rcx                   #  2     0x3   5      OPC=callq_label     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label     
  movw %cx, %r9w                            #  4     0xd   4      OPC=movw_r16_r16    
  movzwq %r9w, %rbx                         #  5     0x11  4      OPC=movzwq_r64_r16  
  adcw %r8w, %bx                            #  6     0x15  4      OPC=adcw_r16_r16    
  retq                                      #  7     0x19  1      OPC=retq            
                                                                                      
.size target, .-target
