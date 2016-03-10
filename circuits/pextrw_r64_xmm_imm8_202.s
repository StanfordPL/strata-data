  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                
.target:                                    #        0    0      OPC=<label>           
  vmovddup %xmm1, %xmm3                     #  1     0    4      OPC=vmovddup_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label       
  movzwl %dx, %ebx                          #  3     0x9  3      OPC=movzwl_r32_r16    
  retq                                      #  4     0xc  1      OPC=retq              
                                                                                       
.size target, .-target
