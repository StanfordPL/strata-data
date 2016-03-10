  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  vmovd %ecx, %xmm1                         #  1     0    4      OPC=vmovd_xmm_r32   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label     
  xchgl %eax, %ebx                          #  3     0x9  1      OPC=xchgl_r32_eax   
  cmovol %eax, %ebx                         #  4     0xa  3      OPC=cmovol_r32_r32  
  retq                                      #  5     0xd  1      OPC=retq            
                                                                                     
.size target, .-target
