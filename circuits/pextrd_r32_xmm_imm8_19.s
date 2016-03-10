  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  movq %xmm1, %rbx                          #  1     0     5      OPC=movq_r64_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label    
  addw %r9w, %bx                            #  3     0xa   4      OPC=addw_r16_r16   
  xchgl %r9d, %ebx                          #  4     0xe   3      OPC=xchgl_r32_r32  
  retq                                      #  5     0x11  1      OPC=retq           
                                                                                     
.size target, .-target
