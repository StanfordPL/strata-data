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
  xchgl %eax, %r8d                          #  3     0xa   2      OPC=xchgl_r32_eax  
  movw %ax, %bx                             #  4     0xc   3      OPC=movw_r16_r16   
  movzbl %bl, %ebx                          #  5     0xf   3      OPC=movzbl_r32_r8  
  retq                                      #  6     0x12  1      OPC=retq           
                                                                                     
.size target, .-target
