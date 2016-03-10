  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w           #  2     0x5   5      OPC=callq_label     
  andl %r9d, %eax                           #  3     0xa   3      OPC=andl_r32_r32    
  xchgl %r9d, %eax                          #  4     0xd   3      OPC=xchgl_r32_r32   
  movzwq %ax, %rbx                          #  5     0x10  4      OPC=movzwq_r64_r16  
  retq                                      #  6     0x14  1      OPC=retq            
                                                                                      
.size target, .-target
