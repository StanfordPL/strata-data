  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  movsbl %ah, %ebx                          #  2     0x5  3      OPC=movsbl_r32_rh  
  xchgl %edx, %ebx                          #  3     0x8  2      OPC=xchgl_r32_r32  
  retq                                      #  4     0xa  1      OPC=retq           
                                                                                    
.size target, .-target
