  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  movaps %xmm1, %xmm3                       #  1     0    3      OPC=movaps_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x3  5      OPC=callq_label     
  xaddl %eax, %r8d                          #  3     0x8  4      OPC=xaddl_r32_r32   
  movzbl %ah, %ebx                          #  4     0xc  3      OPC=movzbl_r32_rh   
  retq                                      #  5     0xf  1      OPC=retq            
                                                                                     
.size target, .-target
