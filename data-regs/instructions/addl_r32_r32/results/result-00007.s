  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  vmovd %ecx, %xmm2                         #  1     0    4      OPC=vmovd_xmm_r32  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label    
  xaddl %ebx, %eax                          #  3     0x9  3      OPC=xaddl_r32_r32  
  xchgl %ebx, %eax                          #  4     0xc  2      OPC=xchgl_r32_r32  
  retq                                      #  5     0xe  1      OPC=retq           
                                                                                    
.size target, .-target
